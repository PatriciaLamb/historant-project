import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="choose-place"
export default class extends Controller {
  static targets =  ['select', 'newPlace']


  hide() {
    // console.log(this.selectTarget);
    // console.log(this.newPlaceTarget);
    // console.log(this.newPlaceTarget.style.display);
    this.newPlaceTarget.style.display = 'none';
  }
}
