import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choose-place"
export default class extends Controller {
  static targets =  ['select', 'hide']

  hide() {
    console.log("object");
  }
}
