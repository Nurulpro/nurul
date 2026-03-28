<?php

namespace App\Http\Controllers;

use App\Models\Tenant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class TenantController extends Controller
{

    public function welcome()
    {
        return view('welcome');
    }

    public function showRegister()
    {
        return view('register');
    }

    public function register(Request $request)
    {
        $dbName = 'tenant_' . $request->subdomain;

        DB::statement("CREATE DATABASE $dbName");

        $tenant = Tenant::create([
            'name'      => $request->name,
            'subdomain' => $request->subdomain,
            'database'  => $dbName,
        ]);

        Config::set('database.connections.tenant.database', $dbName);
        DB::purge('tenant');
        DB::reconnect('tenant');

        \Artisan::call('migrate', [
            '--database' => 'tenant',
            '--path'     => '/database/migrations/tenant',
        ]);

        DB::connection('tenant')->table('users')->insert([
            'name'       => $request->name,
            'email'      => $request->email,
            'password'   => Hash::make($request->password),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect("https://{$request->subdomain}." . env('APP_DOMAIN'));
    }

}
