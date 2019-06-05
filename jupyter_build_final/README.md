# Jupyter Data Collection Script
The contents of this directory are used to launch a docker instances that contains a jupyter notebook that can be used to query the Reddit Public API using the praw library. The jupyter notebook is set up to request, clean, and save the top n post and n most controversial post from the politics subreddit. The notebook also has code to perfrom some initial data analysis. Docker is required.

## Setup
1. Clone or download the files onto your device
2. Change your current directory to this file
3. Run `docker-compose up --build`, this may take a while on the first run
4. Open your browsers and in the address box input the url ouputed in the terminal
5. Open the notebook and you can now modify and run the code
