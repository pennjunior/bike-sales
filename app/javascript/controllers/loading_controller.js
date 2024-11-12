// app/javascript/controllers/loading_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["spinner"]

  connect() {
    console.log("Loading controller is connected!");
  }

  showSpinner() {
    console.log("Loader can spin")
    this.spinnerTarget.style.display = "inline-block";
  }
}
