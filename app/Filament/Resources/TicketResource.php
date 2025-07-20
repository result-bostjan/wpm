<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TicketResource\Pages;
use App\Filament\Resources\TicketResource\RelationManagers;
use App\Models\Ticket;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TicketResource extends Resource
{
    protected static ?string $model = Ticket::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\Select::make('ticket_template_id')
                ->relationship('ticketTemplate', 'name')
                ->required(),

            Forms\Components\TextInput::make('var_1')->nullable(),
            Forms\Components\TextInput::make('var_2')->nullable(),
            Forms\Components\TextInput::make('var_3')->nullable(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('ticketTemplate.name'),
                Tables\Columns\TextColumn::make('var_1'),
                Tables\Columns\TextColumn::make('var_2'),
                Tables\Columns\TextColumn::make('var_3'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ]);
    }

    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTickets::route('/'),
            'create' => Pages\CreateTicket::route('/create'),
            'edit' => Pages\EditTicket::route('/{record}/edit'),
        ];
    }
}
