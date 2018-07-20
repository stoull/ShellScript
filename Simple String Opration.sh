#!/bin/bash

# Simplest example, append/prepend a value to an existing string
life='is wonderful.'
life="Life ${life}"
death='Death is'
death="${death} inevitable."
echo "${life}"
echo "${death}"

# Put both inside another variable
s1="Hello"
s2='viewers'
combined="${s1} ${s2}"
echo "${combined}"

# Append a string to a variable
combined+=" How are you today?"
echo "${combined}"

# Slam the together without spaces (sigh..., C carry over)
sad_panda="This ""technically ""words ""but ""it's ""kinda ""stupid."
echo "${sad_panda}"

# Abuse Bash's prinft -v opotion
a1="This is"
a2="quite silly"
printf -v abused '%s %s' "${a1}" "${a2}"
echo "We pointlessly abused a feature: ${abused}"

# Go into overkill mode with command substitution.
live_for="Live for $(date +%F)!"
echo "${live_for}"

# The paramaters of input
echo "Filename: $0"
echo "Process ID: $$"
echo "-------------------------------"
echo "you entered $# names "
echo "hello $@"

