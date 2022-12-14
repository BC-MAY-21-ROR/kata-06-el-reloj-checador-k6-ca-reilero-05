import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let intervalo;

    const Clock = () => {
      var d = new Date();
      this.element.textContent = d.toLocaleTimeString('en-US', {
        hour12: false,
      });
    }

    Clock()
    intervalo = setInterval(Clock, 1000);
  }
}
