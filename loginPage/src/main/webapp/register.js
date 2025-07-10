document.getElementById("registerForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Stop form from actually submitting

    // Get form values
    var firstName = document.getElementById("firstName").value;
    var lastName  = document.getElementById("lastName").value;
    var city      = document.getElementById("city").value;
    var email     = document.getElementById("email").value;
    var phone     = document.getElementById("phone").value;
    var username  = document.getElementById("username").value;
    var password  = document.getElementById("password").value;

    // Simple validation
    if(firstName === "" || lastName === "" || city === "" || email === "" || phone === "" || username === "" || password === "") {
        alert("Please fill all the fields!");
        return;
    }

    // Optional: Validate phone number length
    if(phone.length !== 10){
        alert("Phone number should be 10 digits!");
        return;
    }

    // Display the collected data (for demo purposes)
    alert("Registration Successful!\n\n"
          + "Name: " + firstName + " " + lastName + "\n"
          + "City: " + city + "\n"
          + "Email: " + email + "\n"
          + "Phone: " + phone + "\n"
          + "Username: " + username);

    // Optional: Reset the form after successful submission
    document.getElementById("registerForm").reset();
});
