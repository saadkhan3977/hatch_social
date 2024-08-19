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
        Schema::create('community', function (Blueprint $table) {
            $table->id();
            $table->string('profile_id')->nullable();
            $table->string('title')->nullable();
            $table->string('approval_post')->nullable();
            $table->string('membership_cost')->nullable();
            $table->string('privacy')->nullable();
            $table->string('admin_create_content')->nullable();
            $table->string('moderator_create_content')->nullable();
            $table->string('member_create_content')->nullable();
            $table->string('admin_remove_content')->nullable();
            $table->string('moderator_remove_content')->nullable();
            $table->string('member_remove_content')->nullable();
            $table->string('admin_create_comment')->nullable();
            $table->string('moderator_create_comment')->nullable();
            $table->string('member_create_comment')->nullable();
            $table->string('admin_member_remove')->nullable();
            $table->string('moderator_member_remove')->nullable();
            $table->string('owner_member_remove')->nullable();
            $table->string('image')->nullable();
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
        Schema::dropIfExists('community');
    }
};
