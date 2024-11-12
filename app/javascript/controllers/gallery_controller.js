import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery"
export default class extends Controller {
  connect() {
    console.log("Its connected")
  }
  show(event) {
    event.preventDefault()
    const clickedImageSrc = event.currentTarget.querySelector("img").src
    this.mainImageTarget.src = clickedImageSrc
  }
}
