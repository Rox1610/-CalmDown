import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkbox", "submit"]

  connect() {}

  onCheck() {
    let count = 0
    this.checkboxTargets.forEach(checkbox => {
      if (checkbox.checked) {
        count++
      }
    })
    if (count >= 3) {
      this.checkboxTargets.forEach(checkbox => {
        if (!checkbox.checked) {
          checkbox.setAttribute('disabled', 'disabled')
        }
      })
      this.submitTarget.removeAttribute('disabled')
    } else {
      this.checkboxTargets.forEach(checkbox => {
        checkbox.removeAttribute('disabled')
      })
      this.submitTarget.setAttribute('disabled', 'disabled')
    }
  }
}
