# Server Contents

1. global.r - This file can be used to read and store data in a global variable that can be accessed by all scripts.
2. server.R - This file sets up the backend of the shiny app. Calulations, prediction logic, and plots are created in this scipt and then passed to the correct event function to be displayed on the UI.
3. ui.R - This file defines the structure of the UI by creating rows and filling them with UI items. Event functions are defined to allow interaction between the UI and the server.R script.
4. about.html - This html fills the about page with information.
