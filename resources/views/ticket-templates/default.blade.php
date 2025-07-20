{{-- resources/views/ticket-templates/default.blade.php --}}
<div>
    <h1>{{ $ticketTemplate->name }}</h1>
    <div>{!! str_replace(
        ['{var_1}', '{var_2}', '{var_3}'],
        [$ticket->var_1, $ticket->var_2, $ticket->var_3],
        $ticketTemplate->content
    ) !!}</div>
</div>