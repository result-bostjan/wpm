<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;


class TicketTemplate extends Model
{
    use HasFactory;

    protected $fillable = ['view', 'name', 'personalization', 'content'];

    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }
}
