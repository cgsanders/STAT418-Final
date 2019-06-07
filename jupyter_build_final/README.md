# Jupyter Data Collection Script
The contents of this directory are used to launch a docker instances that contains a jupyter notebook that can be used to query the Reddit Public API using the praw library. The jupyter notebook is set up to request, clean, and save the top n post and n most controversial post from the politics subreddit. The notebook also has code to perfrom some initial data analysis. Docker is required.

## Setup
To get sever up and running:
1. Download files
2. Change your current directory to the Docker folder in the downloaded files
3. Enter `docker-compose up --build`in the terminal
4. To check that the server is running enter the ip address displayed on your terminal into your browsers address bar. 
5. A jupyter web page should open with the current directory being displayed.
6. Select the Final Script.ipynb
 
 To stop the API:
 1. Type `ctrl-C` in the terminal window. 
 2. Check for open docker instance with `docker container ls`
 3. Stop an instance with `docker container kill <container-name>``

## Reddit Developer Account
You will need a developer account to access reddits api, instructions can be found ![here](https://www.reddit.com/wiki/api). In the Scraping Reddit section of the script you will need to enter your own credential in order to scrape new data for the app. 
