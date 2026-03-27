<?php
namespace App\Http\Controllers;

use App\Models\Tenant;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class TenantController extends Controller
{
   


public function register(Request $request)
{
    $dbName = 'tenant_' . $request->subdomain;

    // 1. Create database
    DB::statement("CREATE DATABASE $dbName");

    // 2. Save tenant
    $tenant = Tenant::create([
        'name' => $request->name,
        'subdomain' => $request->subdomain,
        'database' => $dbName,
    ]);

    // 3. Connect to tenant DB
    Config::set('database.connections.tenant.database', $dbName);
    DB::purge('tenant');
    DB::reconnect('tenant');

    // 4. Run tenant migrations
    \Artisan::call('migrate', [
        '--database' => 'tenant',
        '--path' => '/database/migrations/tenant',
    ]);

    // 5. Create admin user in tenant DB
    DB::connection('tenant')->table('users')->insert([
        'name' => $request->name,
        'email' => $request->email,
        'password' => Hash::make($request->password),
        'created_at' => now(),
        'updated_at' => now(),
    ]);

    // 6. Redirect to tenant login
    return redirect("https://{$request->subdomain}." . env('APP_DOMAIN'));
}


    public function showRegister()
{
    return view('register');
}
}
