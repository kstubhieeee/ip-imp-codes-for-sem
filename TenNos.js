// Static array of ten numbers
const numbers = [5, -3, 0, 12, -7, 0, 8, -1, 0, 4];

// Initialize counters
let negativeCount = 0;
let positiveCount = 0;
let zeroCount = 0;

// Loop through the numbers and count positives, negatives, and zeros
numbers.forEach((num) => {
  if (num < 0) {
    negativeCount++;
  } else if (num > 0) {
    positiveCount++;
  } else {
    zeroCount++;
  }
});

// Display the results
console.log(`Positive numbers count: ${positiveCount}`);
console.log(`Negative numbers count: ${negativeCount}`);
console.log(`Zero count: ${zeroCount}`);
