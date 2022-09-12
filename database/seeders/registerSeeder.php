<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Faker\Factory as Facker;


class registerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1; $i<=20; $i++){
            $facker = Facker::create();
            DB::table('registers')->insert([
                'first_name'=> $facker->name,
                'last_name'=> $facker->name,
                'country'=>$facker->country,
                'email'=>$facker->email,
                'password'=>$facker->password,
            ]);
        }
    }
}
