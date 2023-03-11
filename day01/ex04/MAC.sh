#!/bin/zsh

ifconfig | grep "ether " | cut -d ' ' -f 2
