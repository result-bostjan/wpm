<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Ticket extends Model
{
    use HasFactory;

    protected $fillable = ['ticket_template_id', 'var_1', 'var_2', 'var_3'];

    public function ticketTemplate()
    {
        return $this->belongsTo(TicketTemplate::class);
    }
}
