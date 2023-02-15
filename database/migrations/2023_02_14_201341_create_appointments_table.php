<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppointmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $appointments = [];

        $openFile = fopen(storage_path().'/appointments.csv', 'r');
        $appointments[] = $data = fgetcsv($openFile, ';');
        fclose($openFile);

        $columns = explode(';', $appointments[0][0]);
        
        Schema::create('appointments', function (Blueprint $table) use($columns) {
            $table->id();
            $table->integer('PTNO');
            $table->string($columns[1]);
            $table->string($columns[2]);
            $table->string($columns[3]);
            $table->string($columns[4]);
            $table->string($columns[5]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appointments');
    }
}
