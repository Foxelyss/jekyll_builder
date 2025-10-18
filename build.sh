#!/bin/sh

cd site;

bundle config path /app/cache;

bundle install;

bundle exec jekyll serve --host 0.0.0.0;
