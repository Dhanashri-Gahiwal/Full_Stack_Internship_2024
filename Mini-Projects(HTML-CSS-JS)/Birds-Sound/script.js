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

function bulbul(){
    var sound = document.getElementById("bulbul-sound");
    sound.play();
}

function crow(){
    var sound = document.getElementById("crow-sound");
    sound.play();
}

function cuckoo(){
    var sound = document.getElementById("cuckoo-sound");
    sound.play();
}

function eagle(){
    var sound = document.getElementById("eagle-sound");
    sound.play();
}

function kingfisher(){
    var sound = document.getElementById("kingfisher-sound");
    sound.play();
}

function mynah(){
    var sound = document.getElementById("mynah-sound");
    sound.play();
}

function ostrich(){
    var sound = document.getElementById("ostrich-sound");
    sound.play();
}

function parrot(){
    var sound = document.getElementById("parrot-sound");
    sound.play();
}

function peacock(){
    var sound = document.getElementById("peacock-sound");
    sound.play();
}

function pigeon(){
    var sound = document.getElementById("pigeon-sound");
    sound.play();
}

function sparrow(){
    var sound = document.getElementById("sparrow-sound");
    sound.play();
}

function swan(){
    var sound = document.getElementById("swan-sound");
    sound.play();
}