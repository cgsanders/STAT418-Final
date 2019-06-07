# STAT418 Final Project
![](https://github.com/cgsanders/STAT418-Final/blob/master/GitPic.PNG)

This is the final project for Cole Sanders for STAT 418 at UCLA. The final result can be found at:

https://cole-stats.shinyapps.io/Reddit-Tittle_Phrases/

## Methods
The analysis and final product was seperated into two parts, a data collection part and a presentation/production part. The data collection script can be found in the jupyter_build_final inside a docker container, as well as some initial data analysis. In the shiny_app_418 folder a docker instance containing our shinny app can be found for deployment on your local device. Instructions for how to run the docker instances can be found in each folder.

## Data Collection
For this project we used a jupyter notebook stored in a docker instance to query Reddit's public API to gather data off the site. We used the praw library in our python script to query the API. Then we extracted data from the json responses, cleaned the data, and stored it in a data frame. We used the data frame to explore the data through a light initial anlysis and finaly we saved the data to a csv file. 

## Shiny App
Using the data collected from our jupyter notebook we created a shiny app to allow interactive data analysis through a web browser. The shiny app allows users to input two phrases into the app. The app takes these phrases and looks at the top titles in the politics subreddit and collects the titles of post that contain each phrase. The app then displays the distrbution of reddit karma scores for each set of post in the same histogram. A t-test is calculated to see if the average score of the first phrase is significantly different from the average score of the second phrase. A p-value is displayed and confidence intervals for the difference between to two averages is given. 

## Other Uses
While the data currently being used on the shiny app is taken from the top post on the politics subreddit, the script can be easily modiffied to draw its data from any subreddit on the site. The exact amount of data used can be changed too, but querying the site for large amounts of data takes significant time. Once a new data set is saved you can simply place the csv file created in the same directory as our shiny app, delete the old data, and the new data should flow through for your local instance. (If you are already running the shiny app you will need to restart the docker instance). 

### Original Proposal 
Original Porposal included a much more ambitious scope, the methods had to be simplified in order to meet time constriants. See PowerPoint for original propsal.
