<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="E_Voting.WebForm1" %>

<!DOCTYPE html5>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <style>
        input[type=button] {
            background-color: #04AA6D;
            color: white;
            border: none;
            margin-left: 10px;
        }

        input[type=text], input[type=button], input[type=password] {
            width: 16%;
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
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="home">E-Voting</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="signup.aspx">Signup</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" href="#">AboutUs</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" href="home/ContactUs">ContactUs</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

    

    <form id="form1" runat="server" method="post">
         <div style="text-align: center; margin-top:75px">
             <h2>SignUp</h2>
            <input style="width: 300px" type="text" id="fname" name="fname" placeholder="First Name*" >
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
                    <input type="button" value="Login Instead" style=" " />
                </a><br />
                <a href="Login">
                    <input type="button" value="SignUp" />
                </a>
            </div>
        </div>
        
    </form>
</body>
</html>
