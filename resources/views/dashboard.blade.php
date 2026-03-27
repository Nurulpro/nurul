<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-slate-900 text-white min-h-screen">

    <!-- Navbar -->
    <div class="bg-slate-800 px-6 py-4 flex justify-between items-center shadow-lg">
        <h1 class="text-lg font-semibold">
            Dashboard
        </h1>

        <form method="POST" action="/logout">
            @csrf
            <button class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg text-sm">
                Logout
            </button>
        </form>
    </div>

    <!-- Content -->
    <div class="p-6">

        <!-- Welcome Card -->
        <div class="bg-slate-800 p-6 rounded-2xl shadow mb-6">
            <h2 class="text-xl font-bold mb-2">
                Welcome, {{ auth()->user()->name ?? 'User' }} 
            </h2>

            <p class="text-slate-400 text-sm">
                You are logged into your tenant space.
            </p>
        </div>

        <!-- Info Cards -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">

            <div class="bg-slate-800 p-5 rounded-xl shadow">
                <h3 class="text-sm text-slate-400">Users</h3>
                <p class="text-2xl font-bold mt-2">1</p>
            </div>

            <div class="bg-slate-800 p-5 rounded-xl shadow">
                <h3 class="text-sm text-slate-400">Subdomain</h3>
                <p class="text-sm mt-2 text-indigo-400">
                    {{ request()->getHost() }}
                </p>
            </div>

            <div class="bg-slate-800 p-5 rounded-xl shadow">
                <h3 class="text-sm text-slate-400">Status</h3>
                <p class="text-green-400 mt-2 font-semibold">
                    Active
                </p>
            </div>

        </div>

    </div>

</body>
</html>