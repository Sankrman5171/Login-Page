/**
 * 
 */
function login() {
    var username = document.getElementById("uname").value;
    var password = document.getElementById("pword").value;

    if(username === "" || password === "") {
        alert("Please enter both username and password.");
    } else {
        // Placeholder for actual login logic
        alert("Logged in as " + username);
    }
}

function newUser() {
    alert("Redirecting to registration page...");
    // You can replace this with: window.location.href = "register.html";
}
