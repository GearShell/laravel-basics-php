@if ($flashmsg == 'fname')
    @if (session('fname'))
        <h5 class="p-4 flash_close"
            style="color: green; font-size:15px; font-family: 'Jost', sans-serif; background-color:aquamarine">
            {{ session('fname') }}, your account has been created. Please Login Below.
            <button class="btn-close" style="float: right;" type="button" id="button_close"></button>
        </h5>
    @endif
@else
    @if (session('error'))
        <h5 class="p-4 flash_close"
            style="color: red; font-size:15px; font-family: 'Jost', sans-serif; background-color:rgb(255, 213, 213)">
            {{ session('error') }}
            <button class="btn-close" style="float: right;" type="button" id="button_close"></button>
        </h5>
    @endif
@endif

<script>
    $('#button_close').on('click', function close() {
        $('.flash_close').css('display', 'none');
    })
</script>
