<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('encodes', function (Blueprint $table) {
            $table->id();
            $table->string('client_name');
            $table->text('address');
            $table->string('area');
            $table->string('telephone');
            $table->text('homepage');
            $table->string('category');
            $table->string('open_hours');
            $table->text('facebook_fanpage_url');
            $table->string('memo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('encodes');
    }
};
