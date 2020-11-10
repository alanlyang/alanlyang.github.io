#!/bin/bash
today=`date +%Y-%m-%d`

rm ./sitemap.xml
cp ./_site/sitemap.xml ./

git add  .
git commit -m "${today}"
git push origin main
