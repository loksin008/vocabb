#!/bin/bash

# Get the terminal screen size dynamically
width=$(tput cols)
height=$(tput lines)

# Snake representation in red color
head="\e[31mO\e[0m"   # Snake head
body="\e[31mo\e[0m"   # Snake body

# Snake's initial position, length, and direction
x=$((width / 2))
y=$((height / 2))
length=20  # Initial length of the snake

# Arrays to track the snake's body positions
snake_x=($x)
snake_y=($y)

# Initial velocity (moving right)
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
  
  # Draw the snake on the screen
  for ((i=0; i<$height; i++))
  do
    for ((j=0; j<$width; j++))
    do
      drawn=false
      # Draw the snake body
      for ((k=0; k<${#snake_x[@]}; k++))
      do
        if [[ $i -eq ${snake_y[$k]} && $j -eq ${snake_x[$k]} ]]; then
          if [[ $k -eq 0 ]]; then
            echo -ne "$head"  # Head of the snake
          else
            echo -ne "$body"  # Body of the snake
          fi
          drawn=true
          break
        fi
      done
      if [ "$drawn" = false ]; then
        echo -n " "
      fi
    done
    echo
  done
  
  # Move the snake by updating its position arrays
  x=$((x + dx))
  y=$((y + dy))
  
  # Insert new head position at the beginning of the arrays
  snake_x=($x "${snake_x[@]:0:$((length-1))}")
  snake_y=($y "${snake_y[@]:0:$((length-1))}")

  # Bounce the snake off the walls
  if [[ $x -ge $width || $x -lt 0 ]]; then
    dx=$((dx * -1))
  fi
  if [[ $y -ge $height || $y -lt 0 ]]; then
    dy=$((dy * -1))
  fi

  # Change direction randomly every few steps
  if (( RANDOM % 10 == 0 )); then
    direction=$((RANDOM % 4))
    case $direction in
      0) dx=1; dy=0 ;;   # Move right
      1) dx=-1; dy=0 ;;  # Move left
      2) dx=0; dy=1 ;;   # Move down
      3) dx=0; dy=-1 ;;  # Move up
    esac
  fi

  # Slow down the animation
  sleep 0.1
done
