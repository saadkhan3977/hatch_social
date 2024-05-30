<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_hashtags', function (Blueprint $table) {
            $table->id();
            $table->integer('post_id')->nullable();
            $table->integer('feed_id')->nullable();
            $table->integer('comunity_id')->nullable();
            $table->integer('hashtag_id')->nullable();
            $table->integer('profile_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('post_hashtags');
    }
};
