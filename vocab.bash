#!/bin/bash

# Color codes for different categories
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to show the back option
function back_option {
    read -p "Press Enter to go back to the main menu..." # Wait for user to press Enter to continue
    clear # Clears the screen
}

# Main loop to display menu repeatedly until exit
while true; do
    # Display menu
    echo -e "${CYAN}Select a category to display information:${NC}"
    echo "1. Fruits"
    echo "2. Vegetables"
    echo "3. Flowers"
    echo "17. Famous Temples of India"
    echo "18. Top Railway Stations in India"
    echo "19. Airports in India"
    echo "20. Satellites by India"
    echo "21. Nuclear Reactors in India"
    echo "22. ISRO Centers in India"
    echo "23. IITs in India"
    echo "24. Universities in India"
    echo "25. Distance Learning Universities in India"
    echo "26. Exit"
    read -p "Enter your choice [1-26]: " choice

    # Define translations in associative arrays
    declare -A fruits=( ["Apple"]="सेब" ...) # continue with 30 items
    # ... other associative arrays for different categories

    # Sample data for requested categories

    declare -A temples=(
        ["Somnath Temple"]="गुजरात" ["Kedarnath Temple"]="उत्तराखंड" ["Tirupati Temple"]="आंध्र प्रदेश"
        ["Golden Temple"]="पंजाब" ["Meenakshi Temple"]="तमिल नाडु" # ... 50 items
    )

    declare -A railway_stations=(
        ["Howrah Junction"]="कोलकाता" ["Mumbai CST"]="मुम्बई" ["Chennai Central"]="चेन्नई"
        ["Delhi Junction"]="दिल्ली" # ... 20 items
    )

    declare -A airports=(
        ["Indira Gandhi International Airport"]="दिल्ली" ["Chhatrapati Shivaji Maharaj Airport"]="मुम्बई"
        ["Kempegowda International Airport"]="बेंगलुरु" # ... add other major airports
    )

    declare -A satellites=(
        ["Aryabhata"]="1975" ["Bhaskara-I"]="1979" ["INSAT-1A"]="1982" ["Chandrayaan-1"]="2008"
        ["Mangalyaan"]="2013" # ... add other satellites
    )

    declare -A nuclear_reactors=(
        ["Tarapur Atomic Power Station"]="महाराष्ट्र" ["Kakrapar Atomic Power Station"]="गुजरात"
        ["Rajasthan Atomic Power Station"]="राजस्थान" # ... add more reactors
    )

    declare -A isro_centers=(
        ["Vikram Sarabhai Space Centre"]="तिरुवनंतपुरम" ["Satish Dhawan Space Centre"]="श्रीहरिकोटा"
        ["Space Applications Centre"]="अहमदाबाद" # ... add other ISRO centers
    )

    declare -A iits=(
        ["IIT Bombay"]="महाराष्ट्र" ["IIT Delhi"]="दिल्ली" ["IIT Kanpur"]="उत्तर प्रदेश"
        ["IIT Kharagpur"]="पश्चिम बंगाल" # ... add other IITs
    )

    declare -A universities=(
        ["University of Delhi"]="दिल्ली" ["JNU"]="दिल्ली" ["Banaras Hindu University"]="उत्तर प्रदेश"
        ["University of Calcutta"]="पश्चिम बंगाल" # ... add other universities
    )

    declare -A distance_universities=(
        ["IGNOU"]="दिल्ली" ["Symbiosis Centre for Distance Learning"]="महाराष्ट्र"
        ["Annamalai University"]="तमिल नाडु" # ... add other distance learning universities
    )

    # Display selected category translations with color coding
    case $choice in
        17)
            echo -e "${YELLOW}Famous Temples of India:${NC}"
            for temple in "${!temples[@]}"; do
                echo "$temple - ${temples[$temple]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        18)
            echo -e "${BLUE}Top Railway Stations in India:${NC}"
            for station in "${!railway_stations[@]}"; do
                echo "$station - ${railway_stations[$station]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        19)
            echo -e "${MAGENTA}Airports in India:${NC}"
            for airport in "${!airports[@]}"; do
                echo "$airport - ${airports[$airport]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        20)
            echo -e "${CYAN}Satellites by India:${NC}"
            for satellite in "${!satellites[@]}"; do
                echo "$satellite - Launched in ${satellites[$satellite]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        21)
            echo -e "${RED}Nuclear Reactors in India:${NC}"
            for reactor in "${!nuclear_reactors[@]}"; do
                echo "$reactor - ${nuclear_reactors[$reactor]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        22)
            echo -e "${GREEN}ISRO Centers in India:${NC}"
            for center in "${!isro_centers[@]}"; do
                echo "$center - ${isro_centers[$center]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        23)
            echo -e "${YELLOW}IITs in India:${NC}"
            for iit in "${!iits[@]}"; do
                echo "$iit - ${iits[$iit]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        24)
            echo -e "${BLUE}Universities in India:${NC}"
            for university in "${!universities[@]}"; do
                echo "$university - ${universities[$university]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        25)
            echo -e "${MAGENTA}Distance Learning Universities in India:${NC}"
            for d_university in "${!distance_universities[@]}"; do
                echo "$d_university - ${distance_universities[$d_university]}"
            done
            back_option # Prompt user to go back to the main menu
            ;;
        26)
            echo "Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please select a number from 1 to 26."
            ;;
    esac
done
