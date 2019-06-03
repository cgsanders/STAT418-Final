# STAT418 Final Project
This is the final project for Cole Sanders for STAT 418 at UCLA. The final result can be found (here.)[https://cole-stats.shinyapps.io/Reddit-Tittle_Phrases/]


## Methods
This analysis and final product was seperated into two parts, a data collection part and a presentation/production part. Each is stored in it's own docker instance in the two top level folders. Instructions for how to run the docker instances can be found in each folder.

## Data Collection
For this project we used a jupyter notebook stored in a docker instance to query Reddit's public API to gather data off the site. We used the praw library in our python script to query the API. Then we extracted data from the json responses, cleaned the data, and stored them in a data frame. 

### Original Proposal 
Original Porposal included a much more ambitious scope, the methods had to be simplified in order to meet time constriants. See PowerPoint for original propsal.
