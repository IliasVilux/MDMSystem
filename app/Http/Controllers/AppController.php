<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Patient;

class AppController extends Controller
{
    public function Index()
    {
        return view('appointments');
    }

    public function show()
    {
        $events = array();
        $relations = DB::table('patients')
            ->join('appointments', 'patients.PTNO', '=', 'appointments.PTNO')
            ->get();
        foreach($relations as $relation)
        {
            $date = $relation->{'Appointment Date and Time'};
            $dateMod = date('Y-m-d h:m:s', strtotime($date));
            $relation->{'Appointment Date and Time'} = $dateMod;
            $events[] = [
                'start' => $relation->{'Appointment Date and Time'},
                'title' => $relation->{'PATIENTNAME'}
            ];
        }
        return response()->json($events);
    }
}
