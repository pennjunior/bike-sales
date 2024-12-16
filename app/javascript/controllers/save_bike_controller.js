import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"];
  connect() {
    console.log("Save bike controller connected!", this.element);
  }

  // Triggered when the button is clicked
  toggle(event) {
    event.preventDefault();

    const button = this.element; // The button being clicked
    const url = button.getAttribute("formaction"); // Rails URL for saving

    // Send a POST request
    fetch(url, {
      method: "POST",
      headers: { "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content },
    })
      .then(response => response.json())
      .then(data => {
        if (data.success) {
          this.markAsSaved(button);
        } else {
          alert(data.error || "Something went wrong!");
        }
      })
      .catch(() => alert("Error saving bike"));
  }

  // Function to mark the button as saved
  markAsSaved(button) {
    button.classList.add("saved"); // Add a class to style the button
    button.innerHTML = '<i class="fa-solid fa-heart" style="color: red;"></i>'; // Change icon to solid red heart
  }
}
