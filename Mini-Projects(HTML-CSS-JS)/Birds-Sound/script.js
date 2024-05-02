function register(){
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var cpassword = document.getElementById("cpassword").value;

    localStorage.setItem("username",username);
    localStorage.setItem("email",email);
    localStorage.setItem("password",password);

    if(username == ''){
        alert("Please enter username");
    }else if(email == ''){
        alert("Please enter email");
    }else if(password == ''){
        alert("Please enter password");
    }else if(cpassword == ''){
        alert("Please enter confirm password");
    } else if(password != cpassword){
        alert("Password not match");
    } else{
        alert("Registration Successfull");
        window.location.href = "login.html";
    }
}

function login(){
    var reg_email = localStorage.getItem("email");
    var reg_password = localStorage.getItem("password");

    var login_email = document.getElementById("login_email").value;
    var login_password = document.getElementById("login_password").value;

    localStorage.setItem("login_email", login_email);
    localStorage.setItem("login_password", login_password);

    if(reg_email != login_email || reg_password != login_password){
        alert("Invalid credentials");
    }
    else{
        alert("Login Successfull");
        window.location.href = "birds.html";
    }
}

var regUser = localStorage.getItem("username");
document.getElementById("user").innerHTML = regUser;
