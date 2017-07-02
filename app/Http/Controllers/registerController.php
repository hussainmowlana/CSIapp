<?php

namespace CSIapp\Http\Controllers;

use Illuminate\Http\Request;
use CSIapp\Http\Requests;

use DB;

class registerController extends Controller
{
    public function register(Request $request)
    {

        $cusName = $request['CusName'];
        $cusEmail = $request['CusEmail'];
        $cusAdd = $request['CusAdd'];
        $cusTel = $request['CusTel'];
        $cusPass = $request['CusPass'];
        $cusConPass = $request['CusConPass'];

        DB::table('employee')->insert(
            ['Emp_name' => $cusName, 'Emp_email' => $cusEmail, 'Emp_address'=> $cusAdd, 'Emp_tel' => $cusTel,'Emp_type' => "member", 'Emp_password' => $cusPass]);

    }
}
