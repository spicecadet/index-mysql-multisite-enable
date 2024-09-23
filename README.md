# Index MySQL Multisite Enable
This script allows bulk enablement of indexing for WordPress multisites with the Index MySQL for Speed plugin on the Pantheon Platform. The script relies on Terminus to grab a list of blog IDs and then enables indexing for each child site. 

## Installation
- Clone this repo or copy the script to your local environment
- Add vaules in the script for your Pantheon Org, Site and Environment. Site info can be found with the command: terminus site:info site-name
- Make the script executable: chmod +x enable-index.sh
- Run the script: ./enable-index.sh
