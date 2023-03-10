import { Controller } from "@hotwired/stimulus"
import AOS from "aos"

// Connects to data-controller="aos"
export default class extends Controller {
  connect() {
    console.log("aos is connected")
    AOS.init()
  }
}
