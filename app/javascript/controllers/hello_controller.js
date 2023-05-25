// File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
