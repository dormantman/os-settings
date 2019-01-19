#!/bin/bash

# Config

REMOVE_GAMES=true
REMOVE_AMAZON_APP=true

# System variables

BLUE='\033[1;34m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
NC='\033[0m'

version="0.1.0"
SYS="${PURPLE}[DM SETTINGS]${NC}:"
step="                                      --- Next step ---"

next_step() {
    echo ${step}
    echo "${SYS} $1"
    sleep 1
}

remove_games() {
    next_step "Removing games..."

    sudo apt remove aisleriot
    echo "${SYS} Status remove '${BLUE}aisleriot${NC}' : ${GREEN}OK${NC}"

    sudo apt remove gnome-mahjongg
    echo "${SYS} Status remove '${BLUE}gnome-mahjongg${NC}' : ${GREEN}OK${NC}"

    sudo apt remove gnome-sudoku
    echo "${SYS} Status remove '${BLUE}gnome-sudoku${NC}' : ${GREEN}OK${NC}"

    sudo apt remove gnome-mines
    echo "${SYS} Status remove '${BLUE}gnome-mines${NC}' : ${GREEN}OK${NC}"

    echo "${SYS} Removing games : ${GREEN}OK${NC}"
}

remove_amazon_app() {
    next_step "Removing Amazon application..."

    sudo rm /usr/share/applications/ubuntu-amazon-default.desktop
    echo "${SYS} Status remove '${BLUE}ubuntu-amazon-default${NC}': ${GREEN}OK${NC}"
}


# Install

clear
echo "${SYS} Dm Settings ${GREEN}${version}${NC}"
sleep 1

if ${REMOVE_GAMES} ; then remove_games ; fi

if ${REMOVE_AMAZON_APP} ; then remove_amazon_app ; fi