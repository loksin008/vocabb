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

# Function to exit the script
function exit_option {
    echo "Exiting the script. Goodbye!"
    exit 0
}

# Main loop to display menu repeatedly until exit
while true; do
    # Display menu
    echo -e "${CYAN}Select a category to display information:${NC}"
    echo "1. Fruits"
    echo "2. Vegetables"
    echo "3. Flowers"
    echo "4. Colors"
    echo "5. Days of the Week"
    echo "6. Months"
    echo "7. Verbs"
    echo "8. Capitals of Indian States and Union Territories"
    echo "9. Exit"
    echo "10. Animals (Pet)"
    echo "11. Animals (Wild)"
    echo "12. Aquatic Animals"
    echo "13. Arial Animals"
    echo "14. Terrestrial Animals"
    echo "15. Birds"
    echo "16. Rivers of India"
    echo "17. Mountains of India"
    echo "18. Famous Temples of India"
    echo "19. Top Railway Stations in India"
    echo "20. Airports in India"
    echo "21. Satellites by India"
    echo "22. Nuclear Reactors in India"
    echo "23. ISRO Centers in India"
    echo "24. IITs in India"
    echo "25. Universities in India"
    echo "26. Distance Learning Universities in India"
    read -p "Enter your choice [1-26]: " choice

    # Define translations in associative arrays (added only the beginning of categories for brevity)
    declare -A fruits=( ["Apple"]="सेब" ["Banana"]="केला" ["Orange"]="संतरा" ...)
    declare -A vegetables=( ["Carrot"]="गाजर" ["Potato"]="आलू" ["Tomato"]="टमाटर" ...)
    declare -A flowers=( ["Rose"]="गुलाब" ["Lotus"]="कमल" ["Lily"]="कुमुदिनी" ...)
    declare -A colors=( ["Red"]="लाल" ["Green"]="हरा" ["Blue"]="नीला" ...)
    declare -A days=( ["Sunday"]="रविवार" ["Monday"]="सोमवार" ["Tuesday"]="मंगलवार" ...)
    declare -A months=( ["January"]="जनवरी" ["February"]="फ़रवरी" ["March"]="मार्च" ...)
    declare -A verbs=( ["Run"]="दौड़ना" ["Eat"]="खाना" ["Sleep"]="सोना" ...)
    declare -A capitals=(
        ["Andhra Pradesh"]="Amaravati" ["Arunachal Pradesh"]="Itanagar" ["Assam"]="Dispur"
        ["Bihar"]="Patna" ["Chhattisgarh"]="Raipur" # ... 28 more states and UTs
    )

    # Additional categories (placeholders for brevity)
    declare -A animals_pet=( ["Dog"]="कुत्ता" ["Cat"]="बिल्ली" ["Rabbit"]="खरगोश" ...)
    declare -A animals_wild=( ["Lion"]="शेर" ["Tiger"]="बाघ" ["Elephant"]="हाथी" ...)
    declare -A aquatic_animals=( ["Fish"]="मछली" ["Shark"]="शार्क" ["Whale"]="विल" ...)
    declare -A aerial_animals=( ["Eagle"]="गिद्ध" ["Parrot"]="तोता" ["Sparrow"]="गौरैया" ...)
    declare -A terrestrial_animals=( ["Lion"]="शेर" ["Elephant"]="हाथी" ["Tiger"]="बाघ" ...)
    declare -A birds=( ["Peacock"]="मोर" ["Crow"]="कौआ" ["Sparrow"]="गौरैया" ["Parrot"]="तोता" ...)
    declare -A rivers=( ["Ganga"]="गंगा" ["Yamuna"]="यमुन" ["Brahmaputra"]="ब्रह्मपुत्र" ...)
    declare -A mountains=( ["Mount Everest"]="एवरेस्ट" ["Kangchenjunga"]="कंचनजंगा" ["Nanda Devi"]="नंदा देवी" ...)
    declare -A temples=(
        ["Somnath Temple"]="गुजरात" ["Kedarnath Temple"]="उत्तराखंड" ["Tirupati Temple"]="आंध्र प्रदेश"
        ["Golden Temple"]="पंजाब" ["Meenakshi Temple"]="तमिल नाडु" # ... 50 items
    )
    # More categories will follow here...

    # Display selected category translations with color coding
    case $choice in
        1)
            echo -e "${RED}Fruits:${NC}"
            for fruit in "${!fruits[@]}"; do
                echo "$fruit - ${fruits[$fruit]}"
            done
            back_option
            ;;
        2)
            echo -e "${GREEN}Vegetables:${NC}"
            for vegetable in "${!vegetables[@]}"; do
                echo "$vegetable - ${vegetables[$vegetable]}"
            done
            back_option
            ;;
        3)
            echo -e "${YELLOW}Flowers:${NC}"
            for flower in "${!flowers[@]}"; do
                echo "$flower - ${flowers[$flower]}"
            done
            back_option
            ;;
        4)
            echo -e "${BLUE}Colors:${NC}"
            for color in "${!colors[@]}"; do
                echo "$color - ${colors[$color]}"
            done
            back_option
            ;;
        5)
            echo -e "${MAGENTA}Days of the Week:${NC}"
            for day in "${!days[@]}"; do
                echo "$day - ${days[$day]}"
            done
            back_option
            ;;
        6)
            echo -e "${CYAN}Months:${NC}"
            for month in "${!months[@]}"; do
                echo "$month - ${months[$month]}"
            done
            back_option
            ;;
        7)
            echo -e "${MAGENTA}Verbs:${NC}"
            for verb in "${!verbs[@]}"; do
                echo "$verb - ${verbs[$verb]}"
            done
            back_option
            ;;
        8)
            echo -e "${CYAN}Capitals of Indian States and Union Territories:${NC}"
            for state in "${!capitals[@]}"; do
                echo "$state - ${capitals[$state]}"
            done
            back_option
            ;;
        9)
            exit_option
            ;;
        10)
            echo -e "${RED}Pet Animals:${NC}"
            for animal in "${!animals_pet[@]}"; do
                echo "$animal - ${animals_pet[$animal]}"
            done
            back_option
            ;;
        11)
            echo -e "${GREEN}Wild Animals:${NC}"
            for animal in "${!animals_wild[@]}"; do
                echo "$animal - ${animals_wild[$animal]}"
            done
            back_option
            ;;
        12)
            echo -e "${YELLOW}Aquatic Animals:${NC}"
            for animal in "${!aquatic_animals[@]}"; do
                echo "$animal - ${aquatic_animals[$animal]}"
            done
            back_option
            ;;
        13)
            echo -e "${BLUE}Arial Animals:${NC}"
            for animal in "${!aerial_animals[@]}"; do
                echo "$animal - ${aerial_animals[$animal]}"
            done
            back_option
            ;;
        14)
            echo -e "${MAGENTA}Terrestrial Animals:${NC}"
            for animal in "${!terrestrial_animals[@]}"; do
                echo "$animal - ${terrestrial_animals[$animal]}"
            done
            back_option
            ;;
        15)
            echo -e "${CYAN}Birds:${NC}"
            for bird in "${!birds[@]}"; do
                echo "$bird - ${birds[$bird]}"
            done
            back_option
            ;;
        16)
            echo -e "${RED}Rivers of India:${NC}"
            for river in "${!rivers[@]}"; do
                echo "$river - ${rivers[$river]}"
            done
            back_option
            ;;
        17)
            echo -e "${GREEN}Mountains of India:${NC}"
            for mountain in "${!mountains[@]}"; do
                echo "$mountain - ${mountains[$mountain]}"
            done
            back_option
            ;;
        18)
            echo -e "${YELLOW}Famous Temples of India:${NC}"
            for temple in "${!temples[@]}"; do
                echo "$temple - ${temples[$temple]}"
            done
            back_option
            ;;
        # Add additional cases for the remaining categories...
        *)
            echo "Invalid choice. Please select a number from 1 to 26."
            ;;
    esac
done
