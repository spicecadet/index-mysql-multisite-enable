#!/bin/zsh

# This script bulk enables indexes using the MySQL Index for Speed plugin on all child sites in a Wordpress Multiite on Pantheon.
# Based on info from the following post: https://wordpress.org/support/topic/is-it-multisite-friendly/
# Author: Edmund Turbin
# Github: spicecadet

# terminus site:info site-name
ORG=
SITE_NAME=
ENVIRONMENT=

# Get list of blog IDs from the site environment
BLOG_IDS=$(eval  terminus wp -- $SITE_NAME.$ENVIRONMENT site list --field=blog_id)

# Create an array of sites from the SITES string
BLOG_ID_ARRAY=( ${=BLOG_IDS} )

# Enable indexes for all blog ids 
printf "%s\n" "${BLOG_ID_ARRAY[@]}" | xargs -I {} terminus wp -- $SITE_NAME.$ENVIRONMENT index-mysql enable --all --blogid={}
