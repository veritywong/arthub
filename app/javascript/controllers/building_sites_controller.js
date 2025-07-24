import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // this.element.textContent = "in sites controller!"
  }

  static targets = [ "siteName", "error", "submitButton" ]
  
  validateName() {
    const nameInputLength = this.siteNameTarget.value.trim().length
    console.log(this.errorTarget)
    if ( nameInputLength < 5 ) {
        this.errorTarget.textContent = "Name must be larger than 5 characters"
        this.submitButtonTarget.disabled = true;
    } else {
      this.errorTarget.textContent = ""
      this.submitButtonTarget.disabled = false;
    }
    console.log('nameInput = ' + nameInputLength)
    console.log('change2')

  }

}