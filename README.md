<p align="center"><a href="https://mdmsystems.es/" target="_blank"><img src="https://mdmsystems.es/assets/img/MDM_LOGO_GLOW_WHITE.png" ></a></p>

<h2 align="center" style="color: #0B951F"><b>MDM System</b> / Prueba técnica</h2>

# **Introducción**

Este proyecto aparece a raíz de la prueba técnica desarrollada para [MDM System](https://mdmsystems.es/). Consiste en que a partir de 2 archivos `.csv`, inyectar los datos de estos archivos a una base de datos y con [FullCalendar](https://fullcalendar.io/) mostrar las citas de cada paciente, donde en la fecha registrada debe aparecer tanto a la hora en la que dicha cita está programada y el nombre del paciente

Para realizar esta prueba había varios puntos que el proyecto debería tener:
- A partir de los archivos `.csv` alimentar la base de datos
- Mostrar las citas en el calendario

<p>&nbsp;</p>

# **Información**

El proceso que he seguido para desarrollar este preoyecto ha sido primero hacer la conexión a la base de datos en `.env`:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=MDMSystem
DB_USERNAME=vilux
DB_PASSWORD=user

```
A continuación crear la base de datos, las migraciones de ambas tablas en `database/migrations/2023_02_14_185654_create_patients_table.php` y `database/migrations/2023_02_14_201341_create_appointments_table.php`. Aquí lo que he hecho ha sido leer el archivo `.csv` de su respectiba tabla, pero solo la primera línea, que es donde los nombres de las columas están denifinos.

Al tener ambas tablas creadas, con el seeder que se encuntra en `database/migrations/DatabaseSeeder.php` he leido todas las líneas excepto la primera y separando en un array los datos de cada fila.

<p>&nbsp;</p>

Ya teniendo la base de datos lista, he creado la vista donde se verá reflejado el calendario. Este archivo se ubica en `resources/views/appointments.blade.php`y para que reciba los datos de la base de datos primero creamos las rutas necesarias en `routes/web.php`.
```php
// ruta donde se operarán con los datos
Route::get('/', [AppController::class, 'Index']);

// ruta donde el calendario hará el request de los eventos
Route::get('/show', [AppController::class, 'show']);
```

En el metodo de show de `app/Http/Controllers/AppController.php` es donde está implementada la lógica para que el calendario reciba los datos de la base de datos.
```php
public function show()
    {
        // variable donde se guardarán los datos de los eventos
        $events = array();

        // query
        $relations = DB::table('patients')
            ->join('appointments', 'patients.PTNO', '=', 'appointments.PTNO')
            ->get();

        foreach($relations as $relation)
        {
            // para cada evento, cambiar el formato de la fecha para que el calendario al hacer la petición seguir su formato
            $date = $relation->{'Appointment Date and Time'};
            $dateMod = date('Y-m-d h:m:s', strtotime($date));
            $relation->{'Appointment Date and Time'} = $dateMod;

            // guardar el evento en el array
            $events[] = [
                'start' => $relation->{'Appointment Date and Time'},
                'title' => $relation->{'PATIENTNAME'}
            ];
        }

        // transformar el array en json
        return response()->json($events);
    }
```

Siguiendo la guía de [FullCalendar](https://fullcalendar.io/) para JS, en un documento separado `public/js/calendar.js` he inicializado el calendario y configurado para que recoja los datos de la ruta que he establecido.
```js
document.addEventListener('DOMContentLoaded', function () {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        locale: 'es',
        height: 850,
        headerToolbar: {
            start: 'today prev,next', 
            center: '',
            end: 'title'
        },
        events: 'http://127.0.0.1:8000/show'
    });
    calendar.render();
});
```

Para poder ver el resultado, con el siguiente comando ejecutamos el servidor y nos dirigimos a la ruta que nos indica:
```
php artisan serve
```
![Calendar](https://i.gyazo.com/a20cec3e7989615a7fad71a743dc05ad.png)