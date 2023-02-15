<?php

namespace Database\Seeders;

use App\Http\Controllers\AppController;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        /* --------------------------------------------- */
        /* ---------------- PATIENTS ------------------- */
        /* --------------------------------------------- */

        $patients = [];
        $skipFirst = false;

        if(($openFile = fopen(storage_path().'/patients.csv', 'r')) !== false)
        {
            while(($data = fgetcsv($openFile, ';')) !== false){
                $patients[] = $data;
            }
        }
        fclose($openFile);

        $columns = explode(';', $patients[0][0]);

        foreach ($patients as $patient)
        {
            if ($skipFirst)
            {
                $rowColection = explode(';', $patient[0]);
                DB::table('patients')->insert([
                    $columns[0] => $rowColection[0],
                    'PTNO' => $rowColection[1],
                    $columns[2] => $rowColection[2],
                    $columns[3] => $rowColection[3],
                    $columns[4] => $rowColection[4],
                    $columns[5] => $rowColection[5],
                    $columns[6] => $rowColection[6],
                    $columns[7] => $rowColection[7],
                    $columns[8] => $rowColection[8]
                ]);
            }
            $skipFirst = true;
        }

    

        /* --------------------------------------------- */
        /* -------------- APPOINTMENTS ----------------- */
        /* --------------------------------------------- */

        $appointments = [];
        $skipFirst = false;

        if(($openFile = fopen(storage_path().'/appointments.csv', 'r')) !== false)
        {
            while(($data = fgetcsv($openFile, ';')) !== false){
                $appointments[] = $data;
            }
        }
        fclose($openFile);

        $columns = explode(';', $appointments[0][0]);

        foreach ($appointments as $appointment)
        {
            if ($skipFirst)
            {
                $rowColection = explode(';', $appointment[0]);
                DB::table('appointments')->insert([
                    'PTNO' => $rowColection[0],
                    $columns[1] => $rowColection[1],
                    $columns[2] => $rowColection[2],
                    $columns[3] => $rowColection[3],
                    $columns[4] => $rowColection[4],
                    $columns[5] => $rowColection[5],
                ]);
            }
            $skipFirst = true;
        }
    }
}
