#!/bin/sh

# JavaScript class
function genJs() {
    cp ~/Desktop/boilerplate/generators/js/Class.js `pwd`/$1.js
    perl -pi -e "s/CLASS_NAME/$1/g" `pwd`/$1.js
}

# Sass structure
function genSass() {
    cp -R ~/Desktop/boilerplate/generators/sass `pwd`/css
    sass --watch css/main.scss:css/main.css
}

# Alias shortcuts
alias gen:js="genJs"
alias gen:sass="genSass"