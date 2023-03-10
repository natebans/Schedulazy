import { Controller } from "@hotwired/stimulus"
import Swup from 'swup'

// Connects to data-controller="swup"
export default class extends Controller {
  connect() {
    console.log("swup controller is connected")
    const swup = new Swup()
  }
}
