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