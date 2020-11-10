#!/bin/bash
today=`date +%Y-%m-%d`
rm ./sitmap.xml
cp ./_site/sitmap.xml ./
git add  .
git commit -m "${today}"
git push origin main
