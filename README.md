# Jekyll builder and hosting solution if you don't wanna install ruby on your main system

## Why this project and not jekyll-build image?

Because it doesn't work with all plugins; on my sites with borrowed and credited custom themes from github, plugins are making errors, which are not existent here.

## How to use it?

Clone your repo website as `site` directory. Create empty `cache` directory

Just rename `.env.example` to `.env` and put as `USER` your current system login(as we gonna build website using docker volumes, it's needed so docker can write files)

Execute `docker compose up`, site will be built and hosted!
