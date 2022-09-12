import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let intervalo;

    const Clock = () => {
      var d = new Date();
      this.element.value = d;
    }

    Clock()
    intervalo = setInterval(Clock, 1000);
  }
}
