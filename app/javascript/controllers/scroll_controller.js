import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {
  static targets= ["bikeSection"]
  connect() {
    if (this.hasBikesSectionTarget) {
      // Smoothly scroll to the bikes section
      this.bikesSectionTarget.scrollIntoView({ behavior: "smooth" })

      // Optionally highlight the section
      this.bikesSectionTarget.style.transition = "background-color 0.5s"
      this.bikesSectionTarget.style.backgroundColor = "#fffae6" // Highlight color
      setTimeout(() => {
        this.bikesSectionTarget.style.backgroundColor = "" // Remove highlight
      }, 1500)
    }
  }
}
