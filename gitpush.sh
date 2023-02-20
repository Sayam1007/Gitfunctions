#!/bin/bash

echo "Enter github email id"
read email
echo "Enter github username"
read username

git config --global user.email "$email"
git config --global user.name "$username"

echo "Enter the folder path"
read path
cd $path

git init
echo "Adding all the files to staging area"

git add .
echo "Enter any commit message"
read msg
git commit -m "$msg"
echo "enter the remote url "
read url
git remote add origin  "$url"

git push -u origin master




