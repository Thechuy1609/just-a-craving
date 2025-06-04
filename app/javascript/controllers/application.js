import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

 // Upload
var uploadInput = document.getElementById("upload-picture");
var uploadIcon = document.getElementById("upload-icon");
var upload = document.getElementById("upload");

if (uploadInput) {
    uploadInput.addEventListener("change", function () {
    if (uploadInput.files && uploadInput.files[0]) {
          uploadIcon.classList.remove("hidden");
          upload.classList.add("hidden");
    } else {
          uploadIcon.classList.add("hidden");
        }
      });
}

export { application }
