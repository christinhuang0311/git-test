<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">


    <style>
    body, html {
        padding: 0;
        margin: 0;
        font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        background-color: #efefef;
    }

    img {
        border: 0;
    }

    main {
        padding-top: 15px;
        color: white;
    }

    .loginForm {
        position: absolute;
        color: #ffffff;
        left: 50%;
        top: 45%;
        transform: translate(-50%, -50%);
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
        box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.2);
        background: rgba(255, 255, 255, 0.8);
        border-radius: 5px;
    }

    .loginForm > h1 {
        font-family: "Segoe UI";
        padding: 5% 0 7% 0;
        color: #666666;
    }

    .loginForm .btn.active.focus, .loginForm .btn.active:focus, .loginForm .btn.focus, .loginForm .btn:active.focus, .loginForm .btn:active:focus, .loginForm .btn:focus {
        outline: 0 auto -webkit-focus-ring-color;
        outline-offset: 0;
    }

    .loginForm:focus {
        outline: -webkit-focus-ring-color auto 0;
    }

    .loginForm .form-group {
        height: 50px;
        position: relative;
    }

    .loginForm .form-control {
        letter-spacing: 0.07em;
        border: 1px solid transparent;
        box-shadow: inset 0 1px 1px transparent;
    }

    .loginForm .form-control:focus {
        -webkit-box-shadow: inset 0 1px 1px transparent, 0 0 8px transparent;
        box-shadow: inset 0 1px 1px transparent, 0 0 8px transparent;
    }

    .loginForm .form-label {
        position: absolute;
        pointer-events: none;
        color: #888;
        top: 10px;
        font-size: 14px;
        font-weight: 600;
        letter-spacing: 0.5px;
        transition: 0.2s ease all;
        -moz-transition: 0.2s ease all;
        -webkit-transition: 0.2s ease all;
    }

    .loginForm .form-input:focus ~ .form-label, .loginForm .form-input:valid ~ .form-label {
        top: -17px;
        font-size: 50%;
    }

    .loginForm .form-control {
        background-color: transparent;
        border-bottom: 2px solid #888;
        border-radius: 0;
        padding-left: 0;
        color: #000000;
    }

    .loginForm .form-control:focus {
        border-color: transparent;
        border-bottom: 2px solid #9c9e9f;
    }

    .loginForm .btn {
        border: none;
        border-radius: 3px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1), 0 2px 4px rgba(0, 0, 0, 0.05);
        margin-bottom: 15px;
        position: relative;
        transition: all 0.15s ease-in-out;
        font-size: 12px;
        padding: 6px 18px;
        margin: 0 2px;
    }

    .loginForm .btn:hover, .loginForm .btn:focus, .loginForm .btn:active, .loginForm .btn:active:focus {
        outline: none;
        transition: all 0.15s ease-in-out;
    }

    .loginForm .btn:hover {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2), 0 8px 16px rgba(0, 0, 0, 0.1);
        transition: all 0.15s ease-in-out;
    }

    .loginForm .btn:active {
        box-shadow: none;
        transition-duration: 0.05s;
        transform: translateY(1px);
    }

    .loginForm .btn.btn-primary {
        background-color: #20ccac;
        color: #ffffff;
    }

    .loginForm .btn.btn-primary:hover, .loginForm .btn.btn-primary:focus, .loginForm .btn.btn-primary:active {
        background-color: #1aa98e;
    }

    .loginForm .btn.btn-primary:active {
        background-color: #18977f;
    }

    .loginForm .form-footer {
        margin: 20px 0;
    }

    .loginForm .form-footer img {
        padding: 0 10px;
    }

    </style>
</head>
<body>

    <div class="container loginForm">
        <h1 class="animated bounce">Sign in</h1>
        <form>
            <fieldset>
                <div class="form-group">
                    <input type="Username" class="form-control form-input" id="loginname" placeholder="" required>
                    <label class="form-label" for="">
                        <i class="fas fa-user"></i> Username
                    </label>
                    <span class="glyphicon"></span>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control form-input" id="password" placeholder="" required>
                    <label class="form-label" for=""> password
                    </label>
                    <span class="glyphicon"></span>
                </div>
                <div class="text-center">
                    <button id="submitbtn" class="btn btn-primary" value="Next">Next</button>
                </div>
            </fieldset>
        </form>
        <div class="form-footer text-center">
            <img src="圖片link" alt=""/>
        </div>
    
    </div>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>