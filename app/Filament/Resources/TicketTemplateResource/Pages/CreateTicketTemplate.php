<?php

namespace App\Filament\Resources\TicketTemplateResource\Pages;

use App\Filament\Resources\TicketTemplateResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateTicketTemplate extends CreateRecord
{
    protected static string $resource = TicketTemplateResource::class;

    protected function getRedirectUrl(): string
    {
        // Tukaj nastaviš kam naj te preusmeri takoj po shranjevanju
        return $this->getResource()::getUrl('index');
    } 
}
