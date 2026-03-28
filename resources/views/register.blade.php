<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tenant Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 min-h-screen flex items-center justify-center">

    <div class="w-full max-w-md bg-white/10 backdrop-blur-xl border border-white/20 shadow-2xl rounded-2xl p-8">

        <!-- Header -->
        <div class="text-center mb-6">
            <h2 class="text-2xl font-bold text-white">Create Your Tenant</h2>
            <p class="text-slate-300 text-sm mt-2">
                Launch your own subdomain in seconds
            </p>
        </div>

        <!-- Form -->
       <form method="POST" action="/register" class="space-y-4">
    @csrf

    <!-- Tenant Name -->
    <div>
        <label class="text-sm text-slate-300">Tenant Name</label>
        <input type="text" name="name" required
            class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white border border-white/10 focus:ring-2 focus:ring-indigo-500"
            placeholder="My Business">
    </div>

    <!-- Subdomain -->
    <div>
        <label class="text-sm text-slate-300">Subdomain</label>
        <input type="text" name="subdomain" required
            class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white border border-white/10 focus:ring-2 focus:ring-indigo-500"
            placeholder="nurul">

        <p class="text-xs text-slate-400 mt-1">
            Your URL: nurul.nurul.test
        </p>
    </div>

    <!-- Email -->
    <div>
        <label class="text-sm text-slate-300">Admin Email</label>
        <input type="email" name="email" required
            class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white border border-white/10 focus:ring-2 focus:ring-indigo-500"
            placeholder="admin@example.com">
    </div>

    <!-- Password -->
    <div>
        <label class="text-sm text-slate-300">Password</label>
        <input type="password" name="password" required
            class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white border border-white/10 focus:ring-2 focus:ring-indigo-500"
            placeholder="••••••••">
    </div>

    <button type="submit"
        class="w-full py-3 rounded-xl bg-indigo-600 hover:bg-indigo-500 text-white font-semibold">
        Create Tenant
    </button>
</form>

        <!-- Footer -->
        <p class="text-center text-xs text-slate-400 mt-6">
            Multi-Tenant SaaS System • Powered by Laravel
        </p>

    </div>

</body>
</html>