// Import the prompt-sync module
const prompt = require("prompt-sync")();

// Prompt the user to enter password and confirm password
const password = prompt("Enter your password:");
const confirmPassword = prompt("Confirm your password:");

// Function to check if passwords match
function checkPasswords(password, confirmPassword) {
  if (password === confirmPassword) {
    console.log("Passwords match!");
  } else {
    console.log("Passwords do not match!");
  }
}

// Call the function
checkPasswords(password, confirmPassword);
