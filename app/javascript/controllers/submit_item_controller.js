import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-item"
export default class extends Controller {
  static targets = ["form"]
  connect() {
    console.log(this.element)
    console.log(this.formTarget)
  }
  submit(event){
    // console.log("submit")
    // console.log(event)
    console.log("Hello");
    // setTimeout(() => {  console.log("World!"); }, 5000);
    setTimeout(() => {  this.formTarget.submit(); }, 100);
    // this.formTarget.submit()
  }
}
