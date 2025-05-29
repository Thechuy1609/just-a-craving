import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu", "button"]

  toggle(event) {
    event.preventDefault()

    if (this.buttonTarget.getAttribute("active") === "false") {
      this.show()
    } else {
      this.hide()
    }
  }

  show() {
    this.menuTarget.classList.remove("hidden")
    this.buttonTarget.setAttribute("active", "true")
  }

  hide(event) {
    if ( event && (this.menuTarget.contains(event.target) || this.buttonTarget.contains(event.target))) {
      return
    }
    this.menuTarget.classList.add("hidden")
    this.buttonTarget.setAttribute("active", "false")
  }
}

