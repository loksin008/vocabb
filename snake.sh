#!/bin/bash

# Initialize the screen size
width=50
height=20

# Snake body represented by characters
snake="\e[31mO\e[0m"  # Red color for the snake
tail="\e[31mo\e[0m"   # Red color for the tail (if you want to use it later)

# Snake's initial position
x=10
y=10

# Velocity
dx=1
dy=0

# Clear the terminal screen
clear

# Infinite loop to animate the snake
while true
do
  # Clear screen and move the cursor to the top-left corner
  clear
  tput cup 0 0
  
  # Draw the snake's position on the screen
  for ((i=0; i<$height; i++))
  do
    for ((j=0; j<$width; j++))
    do
      if [[ $i -eq $y && $j -eq $x ]]; then
        echo -ne "$snake"
      else
        echo -n " "
      fi
    done
    echo
  done
  
  # Move the snake
  x=$((x + dx))
  y=$((y + dy))

  # Boundary check and snake bouncing
  if [[ $x -ge $width || $x -lt 0 ]]; then
    dx=$((dx * -1))
  fi
  if [[ $y -ge $height || $y -lt 0 ]]; then
    dy=$((dy * -1))
  fi

  # Slow down the animation
  sleep 0.1
done
