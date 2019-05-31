<?php
/**
 * Created by PhpStorm.
 * User: Nguyen Hong Phuc
 * Date: 5/31/2019
 * Time: 9:00 AM
 */
?>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
    .note
    {
        text-align: center;
        height: 80px;
        background: -webkit-linear-gradient(left, #0072ff, #8811c5);
        color: #fff;
        font-weight: bold;
        line-height: 80px;
    }
    .form-content
    {
        padding: 5%;
        border: 1px solid #ced4da;
        margin-bottom: 2%;
    }
    .form-control{
        border-radius:1.5rem;
    }
    .btnSubmit
    {
        border:none;
        border-radius:1.5rem;
        padding: 1%;
        width: 20%;
        cursor: pointer;
        background: #0062cc;
        color: #fff;
    }
</style>

<div class="container register-form">
    <div class="form">
        <div class="note">
            <p>Đăng ký tài khoản quản lý học sinh.</p>
        </div>
        @if (count($errors) > 0)
            <div class="alert alert-danger" role="alert">
                @foreach($errors->all() as $err)
                    {{$err}}<br/>
                @endforeach
            </div>
        @endif

        <form method="post" action="{{route('register.post')}}" class="form-content">
            {{csrf_field()}}

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" placeholder="Your Name *" value=""/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" placeholder="Email *" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" name="password" placeholder="Your Password *" value=""/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="password2" placeholder="Confirm Password *" value=""/>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btnSubmit">Submit</button>
        </form>

    </div>
</div>
