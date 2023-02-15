<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $patients = [];

        $openFile = fopen(storage_path().'/patients.csv', 'r');
        $patients[] = $data = fgetcsv($openFile, ';');
        fclose($openFile);

        $columns = explode(';', $patients[0][0]);
        
        Schema::create('patients', function (Blueprint $table) use($columns) {
            $table->id();
            $table->string($columns[0]);
            $table->integer('PTNO');
            $table->string($columns[2]);
            $table->string($columns[3]);
            $table->string($columns[4]);
            $table->string($columns[5]);
            $table->string($columns[6]);
            $table->string($columns[7]);
            $table->string($columns[8]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patients');
    }
}
