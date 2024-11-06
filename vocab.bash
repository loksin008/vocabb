#!/bin/bash

# Color codes for different categories
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Main loop to display menu repeatedly until exit
while true; do
    # Display menu
    echo -e "${CYAN}Select a category to display translations:${NC}"
    echo "1. Fruits"
    echo "2. Vegetables"
    echo "3. Flowers"
    echo "4. Colors"
    echo "5. Days of the Week"
    echo "6. Months"
    echo "7. Verbs"
    echo "8. Capitals of Indian States and Union Territories"
    echo "9. Exit"
    read -p "Enter your choice [1-9]: " choice

    # Define translations in associative arrays
    declare -A fruits=( ["Apple"]="सेब" ["Banana"]="केला" ["Orange"]="संतरा" ...) # continue with 30
    declare -A vegetables=( ["Carrot"]="गाजर" ["Potato"]="आलू" ["Tomato"]="टमाटर" ...) # continue with 30
    declare -A flowers=( ["Rose"]="गुलाब" ["Lotus"]="कमल" ["Lily"]="कुमुदिनी" ...) # continue with 30
    declare -A colors=( ["Red"]="लाल" ["Green"]="हरा" ["Blue"]="नीला" ...) # continue with 20
    declare -A days=( ["Sunday"]="रविवार" ["Monday"]="सोमवार" ["Tuesday"]="मंगलवार" ...) # 7 days
    declare -A months=( ["January"]="जनवरी" ["February"]="फ़रवरी" ["March"]="मार्च" ...) # 12 months
    declare -A verbs=( ["Run"]="दौड़ना" ["Eat"]="खाना" ["Sleep"]="सोना" ...) # continue with 50

    declare -A capitals=(
        ["Andhra Pradesh"]="Amaravati" ["Arunachal Pradesh"]="Itanagar" ["Assam"]="Dispur"
        ["Bihar"]="Patna" ["Chhattisgarh"]="Raipur" ["Goa"]="Panaji" ["Gujarat"]="Gandhinagar"
        ["Haryana"]="Chandigarh" ["Himachal Pradesh"]="Shimla" ["Jharkhand"]="Ranchi"
        ["Karnataka"]="Bengaluru" ["Kerala"]="Thiruvananthapuram" ["Madhya Pradesh"]="Bhopal"
        ["Maharashtra"]="Mumbai" ["Manipur"]="Imphal" ["Meghalaya"]="Shillong"
        ["Mizoram"]="Aizawl" ["Nagaland"]="Kohima" ["Odisha"]="Bhubaneswar"
        ["Punjab"]="Chandigarh" ["Rajasthan"]="Jaipur" ["Sikkim"]="Gangtok"
        ["Tamil Nadu"]="Chennai" ["Telangana"]="Hyderabad" ["Tripura"]="Agartala"
        ["Uttar Pradesh"]="Lucknow" ["Uttarakhand"]="Dehradun" ["West Bengal"]="Kolkata"
        ["Andaman and Nicobar Islands"]="Port Blair" ["Chandigarh"]="Chandigarh"
        ["Dadra and Nagar Haveli and Daman and Diu"]="Daman" ["Lakshadweep"]="Kavaratti"
        ["Delhi"]="New Delhi" ["Puducherry"]="Puducherry" ["Ladakh"]="Leh (summer), Kargil (winter)"
        ["Jammu and Kashmir"]="Srinagar (summer), Jammu (winter)"
    )

    # Display selected category translations with color coding
    case $choice in
        1)
            echo -e "${RED}Fruits:${NC}"
            for fruit in "${!fruits[@]}"; do
                echo "$fruit - ${fruits[$fruit]}"
            done
            ;;
        2)
            echo -e "${GREEN}Vegetables:${NC}"
            for vegetable in "${!vegetables[@]}"; do
                echo "$vegetable - ${vegetables[$vegetable]}"
            done
            ;;
        3)
            echo -e "${YELLOW}Flowers:${NC}"
            for flower in "${!flowers[@]}"; do
                echo "$flower - ${flowers[$flower]}"
            done
            ;;
        4)
            echo -e "${BLUE}Colors:${NC}"
            for color in "${!colors[@]}"; do
                echo "$color - ${colors[$color]}"
            done
            ;;
        5)
            echo -e "${MAGENTA}Days of the Week:${NC}"
            for day in "${!days[@]}"; do
                echo "$day - ${days[$day]}"
            done
            ;;
        6)
            echo -e "${CYAN}Months:${NC}"
            for month in "${!months[@]}"; do
                echo "$month - ${months[$month]}"
            done
            ;;
        7)
            echo -e "${MAGENTA}Verbs:${NC}"
            for verb in "${!verbs[@]}"; do
                echo "$verb - ${verbs[$verb]}"
            done
            ;;
        8)
            echo -e "${CYAN}Capitals of Indian States and Union Territories:${NC}"
            for state in "${!capitals[@]}"; do
                echo "$state - ${capitals[$state]}"
            done
            ;;
        9)
            echo "Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please select a number from 1 to 9."
            ;;
    esac

    # Prompt to go back to the main menu
    read -p "Press Enter to go back to the main menu..."
    clear
done
