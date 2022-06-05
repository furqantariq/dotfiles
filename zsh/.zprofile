#!/bin/zsh

# Splash screen
fortune | cowsay -f milk
printf "\n\n"


# Weather information of  location
printf "%s\n\n" "$(curl -s 'wttr.in/?format=4' 2>/dev/null)"

