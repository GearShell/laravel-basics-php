<?php

namespace App\View\Components;

use Illuminate\View\Component;

class flash extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $flashmsg="";

    public function __construct($flash)
    {
        $this->flashmsg=$flash;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.flash');
    }
}
