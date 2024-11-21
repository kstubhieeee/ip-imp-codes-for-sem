function divideNumbers(a, b) {
  try {
    // Check if the divisor is zero
    if (b === 0) {
      throw new Error("Division by zero is not allowed."); // Throwing a custom error
    }
    const result = a / b;
    console.log(`Result: ${result}`);
  } catch (error) {
    // Handle the error
    console.error(`Error: ${error.message}`);
  } finally {
    console.log("Execution completed.");
  }
}

divideNumbers(10, 2); // Valid division
divideNumbers(10, 0); // Triggers an exception
