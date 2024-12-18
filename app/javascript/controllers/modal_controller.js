import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["popup"] // Define the modal popup as a target

  connect() {
    console.log("Modal controller connected!");
  }

  show(event) {
    // Get the target modal ID from the clicked element
    const articleId = event.currentTarget.dataset.articleId;
    const modal = document.querySelector(`#pop-up-${articleId}`);
    modal.classList.remove("hidden");
  }

  close(event) {
    // Find the closest modal and hide it
    const modal = event.currentTarget.closest(".pop-up");
    modal.classList.add("hidden");
  }

  closeOnOutsideClick(event) {
    if (event.target === event.currentTarget) {
      event.currentTarget.classList.add("hidden");
    }
  }
}
