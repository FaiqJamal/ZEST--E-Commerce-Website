@extends('layouts.app')
@section('content')
<title>Register Account</title>
<style>
    body{
        background-image: url('https://sizefox.com/wp-content/uploads/2022/04/best-shopify-apps-for-clothing-store.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }
    .signup-form{
        margin: 1.5em;
    }
</style>
<main class="signup-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <h4 class="card-header text-center">Quick Secure Sign Up</h4>
                    <div class="card-body">
                        <form action="{{ route('register') }}" method="POST">
                            @csrf
                            
                            <div class="form-group mb-3">
                                <input type="text" placeholder="First Name" id="fname" class="form-control" name="fname"
                                    required autofocus>
                                @if ($errors->has('fname'))
                                <span class="text-danger">{{ $errors->first('fname') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" placeholder="Last Name" id="lname" class="form-control" name="lname"
                                    required autofocus>
                                @if ($errors->has('lname'))
                                <span class="text-danger">{{ $errors->first('lname') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" placeholder="Email" id="email_address" class="form-control"
                                    name="email" required autofocus>
                                @if ($errors->has('email'))
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <input type="password" placeholder="Password" id="password" class="form-control"
                                    name="password" required>
                                @if ($errors->has('password'))
                                <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                            <label for="birthday"><i> <b>Date of Birth </b> </i> :</label>
                            
                            
                                <input type="date" id="birthday"  class="form-control"
                                    name="birthday" required>
                                @if ($errors->has('birthday'))
                                <span class="text-danger">{{ $errors->first('birthday') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" placeholder="Contact" id="contact" class="form-control"
                                    name="contact" required autofocus>
                                @if ($errors->has('contact'))
                                <span class="text-danger">{{ $errors->first('contact') }}</span>
                                @endif
                            </div>
                            
                            <div class="form-group mb-3">
                                <input type="text" placeholder="House No." id="house_no" class="form-control"
                                    name="house_no" required autofocus>
                                @if ($errors->has('house_no'))
                                <span class="text-danger">{{ $errors->first('house_no') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" placeholder="Postecode" id="postal_code" class="form-control"
                                    name="postal_code" required autofocus>
                                @if ($errors->has('postal_code'))
                                <span class="text-danger">{{ $errors->first('postal_code') }}</span>
                                @endif
                            </div>
                            <div class="form-group mb-3">
                                <div class="checkbox">
                                    <label><input type="checkbox" name="remember"> Remember Me</label>
                                </div>
                            </div>
                            <div class="d-grid mx-auto">
                                <button type="submit" class="btn btn-dark btn-block">Great, Register My Account</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection