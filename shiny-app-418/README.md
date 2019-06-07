# Shiny App

This directory contains all of the code to run the Shiny App. The app is stored in the docker file, you can uses this to host a local instance to test the code and make changes. The deploy-to-shinyapps.R script contains code to deploy to ShinyApps.io for hosting. To uses this scrip make sure to update the code with your account information.

## Setup a Local Instance
To get sever up and running:
1. Download files
2. Change your current directory to the Docker folder in the downloaded files
3. Enter `docker-compose up --build`in the terminal
4. To check that the server is running enter `localhost:3838` into your browsers address bar. 
 
To stop the API:
1. Type `ctrl-C` in the terminal window. 
2. Check for open docker instance with `docker container ls`
3. Stop an instance with `docker container kill <container-name>`
 
## Deploy the app to ShinyApps.io
Simply run the `deploy-to-shinyapps.R` file:
  1. Download files
  2. Create an account at https://www.shinyapps.io/
  2. Update the `deploy-to-shinyapps.R` to include your account information
  2. Open the Terminal
  3. Change your current directory to the shiny-app-418 folder in the downloaded files
  4. Enter `Rscript deploy-to-shinyapps.R`in the terminal
  5. Go back to your account at https://www.shinyapps.io/ and make sure the status shows as deployed. A link to the app should be on the page.
