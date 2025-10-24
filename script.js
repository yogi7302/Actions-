const greetings = [
  "Hello, World!",
  "Hi there!",
  "Greetings!",
  "Howdy!",
  "Welcome!"
];

const button = document.getElementById("change-btn");
const greetingText = document.getElementById("greeting");

button.addEventListener("click", () => {
  // Pick a random greeting
  const randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];
  greetingText.textContent = randomGreeting;
});
