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
    echo -e "${CYAN}Select a category to translate:${NC}"
    echo "1. Fruits"
    echo "2. Vegetables"
    echo "3. Flowers"
    echo "4. Colors"
    echo "5. Days of the Week"
    echo "6. Months"
    echo "7. Verbs"
    echo "8. Exit"
    read -p "Enter your choice [1-8]: " choice

    # Define translations in associative arrays
    declare -A fruits=(
        ["Apple"]="सेब" ["Banana"]="केला" ["Orange"]="संतरा" ["Grapes"]="अंगूर" ["Mango"]="आम"
        ["Pineapple"]="अनानास" ["Papaya"]="पपीता" ["Watermelon"]="तरबूज" ["Strawberry"]="स्ट्रॉबेरी"
        ["Cherry"]="चेरी" ["Pear"]="नाशपाती" ["Peach"]="आड़ू" ["Plum"]="आलूबुखारा" ["Fig"]="अंजीर"
        ["Guava"]="अमरूद" ["Pomegranate"]="अनार" ["Lemon"]="नींबू" ["Kiwi"]="कीवी" ["Lychee"]="लीची"
        ["Apricot"]="खुबानी" ["Blueberry"]="ब्लूबेरी" ["Coconut"]="नारियल" ["Blackberry"]="जामुन"
        ["Jackfruit"]="कटहल" ["Avocado"]="एवोकाडो" ["Melon"]="खरबूजा" ["Raspberry"]="रसभरी"
        ["Date"]="खजूर" ["Tamarind"]="इमली" ["Olive"]="जैतून"
    )

    declare -A vegetables=(
        ["Carrot"]="गाजर" ["Potato"]="आलू" ["Tomato"]="टमाटर" ["Onion"]="प्याज" ["Spinach"]="पालक"
        ["Cabbage"]="पत्ता गोभी" ["Cauliflower"]="फूलगोभी" ["Broccoli"]="ब्रोकोली" ["Garlic"]="लहसुन"
        ["Ginger"]="अदरक" ["Radish"]="मूली" ["Eggplant"]="बैंगन" ["Pumpkin"]="कद्दू" ["Peas"]="मटर"
        ["Capsicum"]="शिमला मिर्च" ["Bitter Gourd"]="करेला" ["Bottle Gourd"]="लौकी" ["Okra"]="भिंडी"
        ["Turnip"]="शलगम" ["Cucumber"]="खीरा" ["Mushroom"]="कुकरमुत्ता" ["Zucchini"]="तोरी"
        ["Sweet Potato"]="शकरकंद" ["Beetroot"]="चुकंदर" ["Celery"]="अजवाइन" ["Fenugreek"]="मेथी"
        ["Corn"]="मक्का" ["Chili"]="मिर्च" ["Brinjal"]="बैंगन" ["Lettuce"]="सलाद"
    )

    declare -A flowers=(
        ["Rose"]="गुलाब" ["Lotus"]="कमल" ["Lily"]="कुमुदिनी" ["Sunflower"]="सूरजमुखी" ["Marigold"]="गेंदा"
        ["Jasmine"]="चमेली" ["Tulip"]="ट्यूलिप" ["Hibiscus"]="गुड़हल" ["Orchid"]="आर्किड" ["Daisy"]="गुलबहार"
        ["Daffodil"]="नरगिस" ["Lavender"]="लैवेंडर" ["Chrysanthemum"]="चमेली" ["Poppy"]="खसखस"
        ["Iris"]="नील" ["Bougainvillea"]="बोगनविलिया" ["Magnolia"]="चम्पा" ["Dahlia"]="डेहलिया" ["Lilac"]="बकुला"
        ["Periwinkle"]="सदाबहार" ["Zinnia"]="ज़िनिया" ["Petunia"]="पेटुनिया" ["Morning Glory"]="भोला फूल"
        ["Peony"]="मदरिका" ["Camellia"]="चाय फूल" ["Carnation"]="गुलनार" ["Aster"]="आस्टर" ["Bluebell"]="नील पुष्प"
        ["Primrose"]="प्रिमरोस" ["Amaryllis"]="अमेरीलीस"
    )

    declare -A colors=(
        ["Red"]="लाल" ["Green"]="हरा" ["Blue"]="नीला" ["Yellow"]="पीला" ["Orange"]="नारंगी"
        ["Pink"]="गुलाबी" ["Purple"]="बैंगनी" ["Brown"]="भूरा" ["Black"]="काला" ["White"]="सफेद"
        ["Grey"]="धूसर" ["Violet"]="बैंगनी" ["Indigo"]="जामुनी" ["Maroon"]="भूरा" ["Beige"]="मटमैला"
        ["Turquoise"]="फिरोजा" ["Gold"]="सोना" ["Silver"]="चांदी" ["Peach"]="आड़ू" ["Lime"]="नींबू का रंग"
    )

    declare -A days=(
        ["Sunday"]="रविवार" ["Monday"]="सोमवार" ["Tuesday"]="मंगलवार" ["Wednesday"]="बुधवार"
        ["Thursday"]="गुरुवार" ["Friday"]="शुक्रवार" ["Saturday"]="शनिवार"
    )

    declare -A months=(
        ["January"]="जनवरी" ["February"]="फ़रवरी" ["March"]="मार्च" ["April"]="अप्रैल"
        ["May"]="मई" ["June"]="जून" ["July"]="जुलाई" ["August"]="अगस्त" ["September"]="सितंबर"
        ["October"]="अक्टूबर" ["November"]="नवंबर" ["December"]="दिसंबर"
    )

    declare -A verbs=(
        ["Run"]="दौड़ना" ["Eat"]="खाना" ["Sleep"]="सोना" ["Drink"]="पीना" ["Read"]="पढ़ना"
        ["Write"]="लिखना" ["Speak"]="बोलना" ["Walk"]="चलना" ["Jump"]="कूदना" ["Think"]="सोचना"
        ["Listen"]="सुनना" ["Talk"]="बात करना" ["Play"]="खेलना" ["Laugh"]="हंसना" ["Cry"]="रोना"
        ["Sit"]="बैठना" ["Stand"]="खड़ा होना" ["Drive"]="चलाना" ["Cook"]="पकाना" ["Wash"]="धोना"
        ["Work"]="काम करना" ["Sing"]="गाना" ["Dance"]="नाचना" ["Teach"]="सिखाना" ["Learn"]="सीखना"
        ["Buy"]="खरीदना" ["Sell"]="बेचना" ["Give"]="देना" ["Take"]="लेना" ["Open"]="खोलना"
        ["Close"]="बंद करना" ["Help"]="मदद करना" ["Love"]="प्यार करना" ["Hate"]="नफरत करना"
        ["Build"]="बनाना" ["Break"]="तोड़ना" ["Choose"]="चुनना" ["Wait"]="प्रतीक्षा करना"
        ["Agree"]="सहमत होना" ["Disagree"]="असहमत होना" ["Remember"]="याद रखना" ["Forget"]="भूलना"
        ["Win"]="जीतना" ["Lose"]="हारना" ["Grow"]="बढ़ना" ["Fall"]="गिरना" ["Climb"]="चढ़ना"
        ["Push"]="धक्का देना" ["Pull"]="खींचना" ["Hide"]="छिपाना" ["Find"]="खोजना"
    )
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
