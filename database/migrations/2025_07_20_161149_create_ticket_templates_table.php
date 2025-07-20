<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('ticket_templates', function (Blueprint $table) {
            $table->id();
            $table->string('name');              // Ime predloge
            $table->string('view');              // Ime Blade viewa
            $table->boolean('personalization');  // Ali se prikazujejo var_1, var_2, var_3
            $table->text('description')->nullable(); // Opis (dodatno)
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('ticket_templates');
    }
};
