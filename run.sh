#!/bin/bash
today=`date +%Y-%m-%d`

git add  .
git commit -m "${today}"
git push origin main
