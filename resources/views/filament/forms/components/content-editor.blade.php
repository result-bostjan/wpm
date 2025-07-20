{{-- resources/views/filament/forms/components/content-editor.blade.php --}}
<x-filament-forms::field-wrapper :field="$field">
    <div>
        <label for="{{ $getId() }}" class="block text-sm font-medium text-gray-700">
            {{ $getLabel() }}
        </label>

        <textarea
            id="{{ $getId() }}"
            name="{{ $getName() }}"
            {{ $applyStateBindingModifiers('wire:model') }}="{{ $getStatePath() }}"
            @if ($isDisabled()) disabled @endif
            @if ($isRequired()) required @endif
            rows="6"
            class="filament-forms-textarea w-full border-gray-300 rounded-md shadow-sm focus:ring-primary-500 focus:border-primary-500"
        >{{ $getState() }}</textarea>

        @if ($getState())
            <div class="mt-2 text-sm text-gray-500">
                <strong>Preview:</strong> {{ $getState() }}
            </div>
        @endif
    </div>

    {{-- Zakomentiraj, dokler ne veš, kako pravilno povezati model --}}
    {{-- @if ($field->getShowPersonalization($get))
        <div class="mt-4 space-y-2">
            <x-filament::input label="Variable 1" wire:model.defer="data.var_1" />
            <x-filament::input label="Variable 2" wire:model.defer="data.var_2" />
            <x-filament::input label="Variable 3" wire:model.defer="data.var_3" />
        </div>
    @endif --}}
</x-filament::field-wrapper>