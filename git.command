# AUTOMATED GIT UPDATE
#! /bin/bash

git add .
git status

QUESTION='Please provide update sentence'
echo $QUESTION

read SENTENCE

git commit -m '$SENTENCE'



