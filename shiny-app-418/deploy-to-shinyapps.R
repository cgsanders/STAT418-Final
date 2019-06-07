
#deploy to shinyapps.io
#first you will need an account

install.packages('rsconnect')

#name is account name, get both your authentication token and secret in your account
rsconnect::setAccountInfo(name='cole-stats',
			  token='',
			  secret='')

setwd("~/Documents/Stat418/STAT418-Final/shiny-app-418")
library(rsconnect)
rsconnect::deployApp(appDir = 'docker/app/',appName="Reddit-Tittle_Phrases")

#this is now running at
#https://nathan-langholz-rb.shinyapps.io/clusters/
