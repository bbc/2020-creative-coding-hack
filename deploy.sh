#!/bin/bash

rm -rf _site

eleventy

cd _site

git init
git checkout -b gh-pages

git add .
git commit -m "GH pages"

git remote add origin git@github.com:bbc/2020-creative-coding-hack.git
git push -f