#!/bin/bash
echo "Enter github email id"
read email
echo "Enter github username"
read username
git config --global user.email "$email"
git config --global user.name "$username"

echo "Enter the local repo path"
read path
cd $path

git init
echo "Adding all the files to staging area"
git add .
echo "Enter any commit message"
read msg
git commit -m "$msg"


