// app/javascript/controllers/navbar_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    console.log(this.element)
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("sticky")
    } else {
      this.element.classList.remove("sticky")
    }
  };
};
