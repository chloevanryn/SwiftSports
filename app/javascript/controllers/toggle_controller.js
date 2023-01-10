import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglebutton", "list", "karte"];
  connect() {
  }
  updateView(event) {
    this.karteTarget.classList.toggle("d-none");
    this.listTarget.classList.toggle("d-none");
  }
}
