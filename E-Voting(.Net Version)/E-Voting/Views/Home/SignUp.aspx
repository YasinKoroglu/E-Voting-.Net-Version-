﻿

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
    <style>
        input[type=button] {
            background-color: #04AA6D;
            color: white;
            border: none;
            margin-left: 10px;
        }

        input[type=text], input[type=button], input[type=password] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            text-align: center;
            margin-left: 20px;
        }
    </style>
</head>
<body>

        <div>
            <h2 style="text-align:center"> Sign Up </h2>
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        @Html.ActionLink("E-Voting", "home", "Home", new { area = "" }, new { @class = "navbar-brand" })
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li>@Html.ActionLink("AboutUs", "home", "Home")</li>
                            <li>@Html.ActionLink("Campaigns", "Campaigns", "Home")</li>
                            <li>@Html.ActionLink("ContactUs", "ContactUs", "Home")</li>
                            <li>@Html.ActionLink("Login", "Login", "Home")</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <form action="">
            <div style="text-align: center; margin-top:75px">
                <input style="width: 300px" type="text" id="fname" name="fname" placeholder="First Name*">
                <br />
                <input style="width: 300px" type="text" id="lname" name="lname" placeholder="Last Name*">
                <br />
                <input style="width: 300px" type="text" id="ssn" name="ssn" placeholder="SSN*">
                <br />
                <input style="width: 300px" type="text" id="email" name="email" placeholder="Email*">
                <br />
                <input style="width: 300px" type="password" id="password1" name="password1" placeholder="Password*">
                <br />
                <input style="width: 300px" type="password" id="password2" name="password2" placeholder="Password Again*">

                <div>
                    <a href="Login">
                        <input type="button" value="Login Instead" />
                    </a><br />
                    <a href="Login">
                        <input type="button" value="SignUp" />
                    </a>
                </div>
            </div>

        </form>

</body>
</html>
