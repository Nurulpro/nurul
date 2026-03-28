<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 min-h-screen flex items-center justify-center">

    <div class="w-full max-w-md bg-white/10 backdrop-blur-xl border border-white/20 rounded-2xl shadow-2xl p-8">

        <!-- Header -->
        <div class="text-center mb-6">
            <h2 class="text-2xl font-bold text-white">Login</h2>
            <p class="text-slate-300 text-sm mt-2">
                Login to your tenant dashboard
            </p>
        </div>

        <!-- Form -->
        <form method="POST" action="/login" class="space-y-4">
            @csrf

            <!-- Email -->
            <div>
                <label class="text-sm text-slate-300">Email</label>
                <input type="email" name="email" required
                    class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white placeholder-slate-400 border border-white/10 focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    placeholder="you@example.com">
            </div>

            <!-- Password -->
            <div>
                <label class="text-sm text-slate-300">Password</label>
                <input type="password" name="password" required
                    class="w-full mt-1 px-4 py-3 rounded-xl bg-white/10 text-white placeholder-slate-400 border border-white/10 focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    placeholder="••••••••">
            </div>

            <!-- Button -->
            <button type="submit"
                class="w-full py-3 rounded-xl bg-indigo-600 hover:bg-indigo-500 transition text-white font-semibold shadow-lg shadow-indigo-600/30">
                Login
            </button>
        </form>

    

    </div>

</body>
</html>