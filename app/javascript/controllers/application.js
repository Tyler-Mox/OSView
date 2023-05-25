// File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command
import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
