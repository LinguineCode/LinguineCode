#!/bin/bash

###
### Author: Sean Linguine
### Homepage: https://github.com/LinguineCode/LinguineCode
###
### Requirements:
###   $ brew install boxes termtosvg toilet
###
### Usage:
###   $ termtosvg -g '100x25' -c './scripts/linguine.sh' ./assets/terminal.svg
###

PROMPT="[root@slackware97] ~]# "

welcome() {
    welcome="
    Welcome to the LinguineCode Bulletin Board System


    ~*~ https://LinguineCo.de ~*~
    "

    echo -e "$welcome" | boxes -a c
    sleep 2
    toilet -f smmono12 -F gay 'LinguineCode' | boxes -d ian_jones
    echo
}

password_prompt() {
    sleep 2
    echo "UNAUTHORIZED ACCESS IS PROHIBITED"
    echo -n Password: 
    read -t 8
    echo
    echo -e "\nCONNECTION TIMED OUT - ADIOS AMIGOS!\n" | boxes -d tex-cmt
}

establish_connection() {
    echo -e "\nEstablishing connection...\n" | boxes -d tex-cmt
    sleep 4
}

console() {
    typing="
$PROMPT
$PROMPT./li
$PROMPT./lin
$PROMPT./ling
$PROMPT./lingu
$PROMPT./lingui
$PROMPT./linguin
$PROMPT./linguine
$PROMPT./linguine.
$PROMPT./linguine.s
$PROMPT./linguine.sh
    "
    echo -en "\r$PROMPT"
    sleep 1
    echo -e "$typing" | while read i; do echo -en "\r$i" && sleep ."$(( $RANDOM % 6 + 1 ))"; done
    echo
}

console
establish_connection
welcome
password_prompt