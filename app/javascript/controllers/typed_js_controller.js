import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log("types.js controller is connected")
    const typed = {
      strings: ["Going Somewhere?",
        "Schedulazy."],
      typeSpeed: 40,
      fadeOut: true,
      onComplete: function(self) { self.cursor.remove() }
    }

    new Typed(this.element, typed)
  }
}
