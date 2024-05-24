#!/bin/bash

# Function to print wacky, randomly colored text
wacky_text() {
    local text=$1
    local colors=(31 32 33 34 35 36)
    local color
    for (( i=0; i<${#text}; i++ )); do
        color=${colors[RANDOM % ${#colors[@]}]}
        echo -ne "\e[${color}m${text:$i:1}\e[0m"
        sleep 0.1
    done
    echo
}

# Function to display a bizarre quote
bizarre_quote() {
    local quotes=(
        "Reality is a hallucination created by a brain deprived of sensory input."
        "The cosmic giggle is contagious."
        "Embrace the absurdity of existence."
        "Let the universe tickle your neurons."
        "Entropy is just the universe's way of having a good time."
        "Time is a construct. Lunchtime doubly so."
    )
    local quote=${quotes[RANDOM % ${#quotes[@]}]}
    wacky_text "$quote"
}

# Function to create a psychedelic animation
psychedelic_animation() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local color1
    local color2
    local char="="
    local speed=0.01

    while true; do
        color1=${colors[RANDOM % ${#colors[@]}]}
        color2=${colors[RANDOM % ${#colors[@]}]}
        for (( i=0; i<=width; i++ )); do
            for (( j=0; j<height; j++ )); do
                echo -ne "\e[${color1}m$char\e[${color2}m$char"
            done
            echo
            sleep $speed
        done
    done
}

# Function to display a trippy ASCII art
trippy_ascii_art() {
    cat << "EOF"
        .-"""-.
       /       \
       |       |
       \       /
        '-...-'
EOF
    sleep 1
}

# Function to create a rainbow text animation
rainbow_text() {
    local text="RAINBOW"
    local colors=(31 33 32 36 34 35) # Red, Yellow, Green, Cyan, Blue, Purple
    local i=0
    while true; do
        echo -ne "\e[${colors[$i]}m$text\e[0m "
        i=$(( (i+1) % ${#colors[@]} ))
        sleep 0.5
    done
}

# Function to display a glitch effect
glitch_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local x
    local y
    local char
    local colors=("31" "32" "33" "34" "35" "36")

    while true; do
        x=$((RANDOM % width))
        y=$((RANDOM % height))
        char=$((RANDOM % 2))
        color="${colors[RANDOM % ${#colors[@]}]}"
        tput cup $y $x
        if [ $char -eq 0 ]; then
            echo -ne "\e[${color}m0\e[0m"
        else
            echo -ne "\e[${color}m \e[0m"
        fi
        sleep 0.005
    done
}

# Function to display a fractal animation
fractal_animation() {
    local colors=(31 32 33 34 35 36)
    local color
    local line="X"
    local width=$(tput cols)

    while true; do
        color=${colors[RANDOM % ${#colors[@]}]}
        echo -ne "\e[${color}m$line\e[0m"
        sleep 0.01
        line+="X"
        if [ ${#line} -gt $width ]; then
            line="X"
        fi
    done
}

# Function to create a snowfall effect
snowfall_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local snowflake="*"
    local x
    local y
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        x=$((RANDOM % width))
        y=$((RANDOM % height))
        tput cup $y $x
        echo -ne "\e[1;37m$snowflake\e[0m" # White snowflake
        sleep $speed
        tput cup $y $x
        echo -ne " " # Clear snowflake
    done

    tput cnorm # Restore cursor
}

# Function to create a matrix rain effect
matrix_rain_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local chars=(0 1 2 3 4 5 6 7 8 9)
    local colors=(31 32 33 34 35 36)
    local col
    local row
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        col=$((RANDOM % width))
        row=$((RANDOM % height))
        color=${colors[RANDOM % ${#colors[@]}]}
        tput cup $row $col
        echo -ne "\e[${color}m${chars[RANDOM % ${#chars[@]}]}\e[0m"
        sleep $speed
    done

    tput cnorm # Restore cursor
}

# Function to display a mesmerizing tunnel effect
tunnel_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local color1
    local color2
    local char=" "
    local speed=0.01

    tput civis # Hide cursor

    while true; do
        color1=${colors[RANDOM % ${#colors[@]}]}
        color2=${colors[RANDOM % ${#colors[@]}]}
        for (( i=1; i<=width/2; i++ )); do
            echo -ne "\e[${color1}m\e[7m${char}\e[0m"
            for (( j=1; j<=height; j++ )); do
                tput cup $j $((width/2 - i))
                echo -ne "\e[${color1}m\e[7m${char}\e[0m"
                tput cup $j $((width/2 + i))
                echo -ne "\e[${color2}m\e[7m${char}\e[0m"
            done
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Function to create a spinning spiral effect
spinning_spiral_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31   32 33 34 35 36)
    local color1
    local color2
    local char=" "
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        color1=${colors[RANDOM % ${#colors[@]}]}
        color2=${colors[RANDOM % ${#colors[@]}]}
        for (( i=0; i<width/2; i+=2 )); do
            for (( j=i; j<width-i; j++ )); do
                tput cup $((height/2)) $j
                echo -ne "\e[${color1}m${char}\e[0m"
                tput cup $((height/2)) $((width-j))
                echo -ne "\e[${color2}m${char}\e[0m"
            done
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Function to create a cursed effect
cursed_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local char="*"
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        for (( i=0; i<height; i++ )); do
            tput cup $i 0
            echo -ne "\e[31m$char\e[0m" # Red cursed text
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Function to generate weird faces
weird_faces() {
    local faces=(
        "(>.<)"
        "(¬‿¬)"
        "(•_•)"
        "(ʘ‿ʘ)"
        "(◕‿◕)"
        "(▰˘◡˘▰)"
        "¯\_(ツ)_/¯"
        "(ง'̀-'́)ง"
    )
    local face=${faces[RANDOM % ${#faces[@]}]}
    wacky_text "$face"
}

# Function to generate strange sounds
strange_sounds() {
    local sounds=(
        "Boop!"
        "Zoop!"
        "Bleep!"
        "Blorp!"
        "Ping!"
        "Pong!"
        "Squish!"
        "Bloop!"
    )
    local sound=${sounds[RANDOM % ${#sounds[@]}]}
    echo "$sound"
}

# Function to generate bizarre shapes
bizarre_shapes() {
    local shapes=(
        "▲▽▲"
        "◆◇◆"
        "□■□"
        "◉◎◉"
        "◈◉◈"
        "◌◍◌"
        "◑◐◑"
        "◓◒◓"
    )
    local shape=${shapes[RANDOM % ${#shapes[@]}]}
    wacky_text "$shape"
}

# Function to generate bizarre dance moves
bizarre_dance_moves() {
    local moves=(
        "The Funky Chicken"
        "The Robot"
        "The Worm"
        "The Carlton Dance"
        "The Moonwalk"
        "The Sprinkler"
        "The Twerk"
        "The Running Man"
    )
    local move=${moves[RANDOM % ${#moves[@]}]}
    wacky_text "$move"
}

# Function to generate mysterious symbols
mysterious_symbols() {
    local symbols=(
        "∆"
        "ø"
        "Ω"
        "∞"
        "≈"
        "♠"
        "♣"
        "♥"
        "♦"
    )
    local symbol=${symbols[RANDOM % ${#symbols[@]}]}
    wacky_text "$symbol"
}

# Function to generate surreal landscapes
surreal_landscapes() {
    local landscapes=(
        "A field of floating jellybeans under a purple sky."
        "A forest where the trees have eyes and the rivers flow backwards."
        "A desert made of cotton candy with sugar crystal dunes."
        "An ocean where the waves are made of liquid gold."
        "A city where buildings grow like plants and sidewalks are made of rainbows."
        "A sky filled with flying elephants and dancing stars."
        "A mountain range where the peaks reach into the clouds, which are made of cotton candy."
        "A valley where the grass whispers secrets to the wind."
    )
    local landscape=${landscapes[RANDOM % ${#landscapes[@]}]}
    wacky_text "$landscape"
}

# Function to generate cosmic entities
cosmic_entities() {
    local entities=(
        "The Interstellar Wombat"
        "The Cosmic Sloth"
        "The Galactic Octopus"
        "The Nebula Narwhal"
        "The Quasar Koala"
        "The Astral Alpaca"
        "The Celestial Corgi"
        "The Supernova Squirrel"
    )
    local entity=${entities[RANDOM % ${#entities[@]}]}
    wacky_text "$entity"
}

# Function to display a chaotic ASCII art
chaotic_ascii_art() {
    cat << "EOF"
        ,╥, ,╓,
        ╙▒╜ ╙▒╜
        ▒▒▒▒▒▒▒
        ╘▒▒▒▒▒╛
        ╓▒▒▒▒▒▓,
        '▀▒▒▒▒▀`
        . '▀▀'
EOF
    sleep 1
}

# Function to generate glitchy text
glitchy_text() {
    local text="GLITCHY TEXT"
    local colors=(31 32 33 34 35 36)
    local i=0
    while true; do
        echo -ne "\e[${colors[$i]}m$text\e[0m "
        i=$(( (i+1) % ${#colors[@]} ))
        sleep 0.5
    done
}

# Function to display a mesmerizing geometric pattern
geometric_pattern() {
    cat << "EOF"
           ▄▄███████▄▄
        ▄███████████████▄
       ███████████████████
       ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
       ███████████████████
        ▀████████████████▀
           ▀▀███████▀▀
EOF
    sleep 1
}

# Function to generate chaotic animation
chaotic_animation() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local speed=0.01

    tput civis # Hide cursor

    while true; do
        for ((i=1; i<=width; i++)); do
            x=$((RANDOM % width))
            y=$((RANDOM % height))
            color=${colors[RANDOM % ${#colors[@]}]}
            tput cup $y $x
            echo -ne "\e[${color}m*\e[0m"
        done
        sleep $speed
    done

    tput cnorm # Restore cursor
}

# Function to generate unpredictable patterns
unpredictable_patterns() {
    local patterns=(
        "█▒░▓▓█▓▒▒░▒▒░░░█░▒█"
        "▓░▒▒░▓█░░▒█▓█▒▒▒░░█"
        "▓▒▓█▒▒▒█░▒▓░█▓▓░▓░░"
        "▒▒░▒█░▒░░▓▒░░▒▒▓▓▓░"
        "▓▓█░░░░▒▒▓█▒▒░█▓▒▒░"
        "▓▓░░░░▒░▒▒░░▓░░░░▒▓"
        "▒▒▓▒░▒▓▓▒░▒▒▒▓▒▒▓░▓"
        "█░░▒▒▒▓▓█▒░▒░▒▓░░▒▒"
    )
    local pattern=${patterns[RANDOM % ${#patterns[@]}]}
    wacky_text "$pattern"
}

# Function to display a kaleidoscope effect
kaleidoscope_effect() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        local color=${colors[RANDOM % ${#colors[@]}]}
        for ((x=0; x<width; x++)); do
            for ((y=0; y<height; y++)); do
                local newX=$((width - x))
                local newY=$((height - y))
                tput cup $newY $newX
                echo -ne "\e[${color}m*\e[0m"
            done
        done
        sleep $speed
    done

    tput cnorm # Restore cursor
}

# Function to generate strange ASCII art
strange_ascii_art() {
    cat << "EOF"
            /¯¯\
           /    \
           |    |
         \__  __/
             ||
           \__/
EOF
    sleep 1
}

# Function to generate random symbols
random_symbols() {
    local symbols=( "@" "#" "%" "&" "$" "!" "?" "+" "=" "*" "-" "_" "/" "\\" "|" "(" ")" "[" "]" "{" "}" "<" ">" "^" ":" ";" "," "." )
    local symbol=${symbols[RANDOM % ${#symbols[@]}]}
    echo "$symbol"
}

# Function to display a hypnotic spiral
hypnotic_spiral() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local speed=0.05

    tput civis # Hide cursor

    while true; do
        local color=${colors[RANDOM % ${#colors[@]}]}
        local x=$((width / 2))
        local y=$((height / 2))
        local size=1
        for ((i=0; i<width/2; i++)); do
            tput cup $y $x
            echo -ne "\e[${color}m*\e[0m"
            ((x+=size/2))
            ((y+=size/2))
            ((size++))
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Function to generate chaotic text
chaotic_text() {
    local text="CHAOTIC TEXT"
    local colors=(31 32 33 34 35 36)
    local speed=0.1

    while true; do
        for ((i=0; i<${#text}; i++)); do
            local color=${colors[RANDOM % ${#colors[@]}]}
            echo -ne "\e[${color}m${text:$i:1}\e[0m"
            sleep $speed
        done
        echo
    done
}

# Function to display a morphing blob
morphing_blob() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local speed=0.01

    tput civis # Hide cursor

    while true; do
        local color=${colors[RANDOM % ${#colors[@]}]}
        local x=$((RANDOM % width))
        local y=$((RANDOM % height))
        local size=$((RANDOM % 10 + 5))
        local shape=""
        for ((i=0; i<size; i++)); do
            shape+="*"
        done
        for ((i=0; i<20; i++)); do
            tput cup $y $x
            echo -ne "\e[${color}m$shape\e[0m"
            x=$((x + (RANDOM % 3 - 1)))
            y=$((y + (RANDOM % 3 - 1)))
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Function to display a swirling vortex
swirling_vortex() {
    local width=$(tput cols)
    local height=$(tput lines)
    local colors=(31 32 33 34 35 36)
    local speed=0.01

    tput civis # Hide cursor

    while true; do
        local color=${colors[RANDOM % ${#colors[@]}]}
        local x=$((width / 2))
        local y=$((height / 2))
        local angle=0
        for ((i=0; i<360; i++)); do
            local radian=$(bc <<< "scale=3; $angle * 3.14159 / 180")
            local dx=$(bc <<< "scale=0; c($radian)")
            local dy=$(bc <<< "scale=0; s($radian)")
            tput cup $y $x
            echo -ne "\e[${color}m*\e[0m"
            ((x+=dx))
            ((y+=dy))
            ((angle+=10))
            sleep $speed
        done
    done

    tput cnorm # Restore cursor
}

# Main function to display menu and run selected effect
main_menu() {
    clear
    echo "Welcome to the Trippy Terminal!"
    echo "Choose a weird effect:"
    echo "1. Bizarre Quote"
    echo "2. Psychedelic Animation"
    echo "3. Trippy ASCII Art"
    echo "4. Rainbow Text"
    echo "5. Glitch Effect"
    echo "6. Fractal Animation"
    echo "7. Snowfall Effect"
    echo "8. Matrix Rain Effect"
    echo "9. Mesmerizing Tunnel"
    echo "10. Spinning Spiral Effect"
    echo "11. Cursed Effect"
    echo "12. Weird Faces"
    echo "13. Strange Sounds"
    echo "14. Bizarre Shapes"
    echo "15. Bizarre Dance Moves"
    echo "16. Mysterious Symbols"
    echo "17. Surreal Landscapes"
    echo "18. Cosmic Entities"
    echo "19. Chaotic ASCII Art"
    echo "20. Glitchy Text"
    echo "21. Mesmerizing Geometric Pattern"
    echo "22. Chaotic Animation"
    echo "23. Unpredictable Patterns"
    echo "24. Kaleidoscope Effect"
    echo "25. Strange ASCII Art"
    echo "26. Random Symbols"
    echo "27. Hypnotic Spiral"
    echo "28. Chaotic Text"
    echo "29. Morphing Blob"
    echo "30. Swirling Vortex"
    echo "31. Exit"
    read -p "Enter your choice [1-31]: " choice

    case $choice in
        1)  bizarre_quote ;;
        2)  psychedelic_animation ;;
        3)  trippy_ascii_art ;;
        4)  rainbow_text ;;
        5)  glitch_effect ;;
        6)  fractal_animation ;;
        7)  snowfall_effect ;;
        8)  matrix_rain_effect ;;
        9)  tunnel_effect ;;
        10) spinning_spiral_effect ;;
        11) cursed_effect ;;
        12) weird_faces ;;
        13) strange_sounds ;;
        14) bizarre_shapes ;;
        15) bizarre_dance_moves ;;
        16) mysterious_symbols ;;
        17) surreal_landscapes ;;
        18) cosmic_entities ;;
        19) chaotic_ascii_art ;;
        20) glitchy_text ;;
        21) geometric_pattern ;;
        22) chaotic_animation ;;
        23) unpredictable_patterns ;;
        24) kaleidoscope_effect ;;
        25) strange_ascii_art ;;
        26) random_symbols ;;
        27) hypnotic_spiral ;;
        28) chaotic_text ;;
        29) morphing_blob ;;
        30) swirling_vortex ;;
        31) exit 0 ;;
        *)  echo "Invalid choice." ;;
    esac
}

# Run the main menu in a loop
while true; do
    main_menu
    read -p "Press Enter to continue..."
done
