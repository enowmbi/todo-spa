import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
    toggle(){
     alert("toggle has been clicked")
    }
}
