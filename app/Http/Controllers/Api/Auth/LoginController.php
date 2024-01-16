<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            
            // Generate token for the authenticated user
            $token = $user->createToken('Laravel9PassportAuth')->accessToken;

            return response()->json(['user' => $user, 'access_token' => $token, 'message' => 'Login successful']);
        }

        return response()->json(['error' => 'Unauthorized'], 401);
    }
}
