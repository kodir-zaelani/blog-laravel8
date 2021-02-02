<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('photos', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('album_id')->nullable(false);
            $table->string('title')->nullable();
            $table->string('slug')->unique()->nullable();
            $table->string('image');
            $table->string('caption')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('album_id')->references('id')->on('albums')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('photos');
    }
}
