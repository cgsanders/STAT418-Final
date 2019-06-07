
#deploy to shinyapps.io
#first you will need an account

install.packages('rsconnect')

#name is account name, get both your authentication token and secret in your account
rsconnect::setAccountInfo(name='',
			  token='',
			  secret='')

setwd("~/Documents/Stat418/STAT418-Final/shiny-app-418")
library(rsconnect)
rsconnect::deployApp(appDir = 'docker/app/',appName="Reddit-Tittle_Phrases")


