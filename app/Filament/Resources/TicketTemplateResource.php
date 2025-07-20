<?php

namespace App\Filament\Resources;

use App\Filament\Forms\Components\ContentEditor;
use App\Filament\Resources\TicketTemplateResource\Pages;
use App\Models\TicketTemplate;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class TicketTemplateResource extends Resource
{
    protected static ?string $model = TicketTemplate::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('view')->required(),
            Forms\Components\TextInput::make('name')->required(),
            Forms\Components\Toggle::make('personalization')->required(),

            ContentEditor::make('content')
                ->label('Template Content')
                ->required()
                ->showPersonalization(fn ($get) => $get('personalization') === true),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\TextColumn::make('view'),
                Tables\Columns\IconColumn::make('personalization')->boolean(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListTicketTemplates::route('/'),
            'create' => Pages\CreateTicketTemplate::route('/create'),
            'edit' => Pages\EditTicketTemplate::route('/{record}/edit'),
        ];
    }
}