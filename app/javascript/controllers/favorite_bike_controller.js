// app/javascript/controllers/favorite_bike_controller.js

document.addEventListener("DOMContentLoaded", () => {
  document.addEventListener("ajax:success", (event) => {
    console.log("DOM fully loaded, and Favorite Bike Controller logic is running!");
    const [data, status, xhr] = event.detail; // Rails UJS sends this information
    if (data.success) {
      const button = document.querySelector(`[data-id="${data.bike_id}"]`);
      if (button) {
        button.classList.add("btn-red"); // Add class for red styling
        button.innerHTML = '<i class="fa-solid fa-heart"></i>'; // Change icon
      }
    }
  });

  document.addEventListener("ajax:error", (event) => {
    alert("Failed to save the bike. Maybe it's already in your favorites!");
  });
});
