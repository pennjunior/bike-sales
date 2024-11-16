import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  static targets = ["spinner"]
  connect() {
    console.log("this works")
  }

  showSpinner() {
    // Show the spinner when the form is submitted
    this.spinnerTarget.style.display = "inline-block";
  }
}
