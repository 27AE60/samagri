#!/bin/bash

echo "Hello, " $USER
echo "- creating directory"
mkdir samagri
cd samagri

echo "- getting Samagri/Pallete.."
wget -q . https://raw.githubusercontent.com/27AE60/samagri/master/pallete.scss

echo "- getting Samagri/Typography.."
wget -q . https://raw.githubusercontent.com/27AE60/samagri/master/typography.scss

echo "- getting Samagri/Viewport.."
wget -q . https://raw.githubusercontent.com/27AE60/samagri/master/viewport.scss

echo "Done!"
