<?php

namespace App\View\Components;

use Illuminate\View\Component;

class error extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $errormsg="";
    public function __construct($errormsgg)
    {
        $this->errormsg=$errormsgg;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.error');
    }
}
