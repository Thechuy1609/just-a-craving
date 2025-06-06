import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

 // Upload pictures
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

// Admin Nav
    const adminNavMenu = document.getElementById("navigation-mobile-menu");
    const adminNavSidebar = document.getElementById("navigation-mobile");
if (adminNavMenu) {
      const adminNavMenuBtn = adminNavMenu.querySelector("button");
      adminNavMenuBtn.addEventListener("click", function () {
        adminNavSidebar.classList.toggle("hidden");
        adminNavMenu.classList.toggle("hidden");
      });

      const adminNavSidebarCloseBtn = adminNavSidebar.querySelector("button");
      adminNavSidebarCloseBtn.addEventListener("click", function () {
        adminNavSidebar.classList.toggle("hidden");
        adminNavMenu.classList.toggle("hidden");
      });
}

export { application }
