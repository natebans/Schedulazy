import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["button", "navbar"]

  connect() {
    console.log("navbar controller is connected")
  }

  displayNavbar() {
    this.navbarTarget.classList.remove("hidden")
  }
}
