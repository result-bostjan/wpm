<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ticket_template_id')->constrained('ticket_templates')->onDelete('cascade');
            $table->unsignedBigInteger('user_id')->nullable(); // Lahko dodaš povezavo na uporabnika
            $table->string('var_1')->nullable();
            $table->string('var_2')->nullable();
            $table->string('var_3')->nullable();
            $table->timestamp('issued_at')->nullable(); // Kdaj je bila karta izdana
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tickets');
    }
};