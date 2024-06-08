#!/bin/bash

# ASCII Art and 5/5/5 Message
echo "   _____                   __ _           ______    __ ______    __ ______"
echo "  / ___/ __  __ _____ ____/ /(_)____ _   / ____/  _/_// ____/  _/_// ____/"
echo "  \\__ \\ / / / // ___// __  // // __ \`/  /___ \\  _/_/ /___ \\  _/_/ /___ \\  "
echo " ___/ // /_/ /(__  )/ /_/ // // /_/ /  ____/ /_/_/  ____/ /_/_/  ____/ /  "
echo "/____/ \\__, //____/ \\__,_//_/ \\__, /  /_____//_/   /_____//_/   /_____/   "
echo "      /____/                 /____/                                       "
echo ""
echo "5 seconds to detect"
echo "5 minutes to triage"
echo "5 minutes to respond to threats"
echo ""

# Function to display the menu
display_menu() {
    echo "Sysdig 5/5/5 Command Line Tool"
    echo "=============================="
    echo "1. Simulate SCARLETEEL"
    echo "2. Simulate SSH_Snake"
    echo "3. Simulate LABRAT"
    echo "4. Simulate AMBERSQUID"
    echo "5. Simulate LLM-jacking"
    echo "6. Apply a YAML file"
    echo "7. Exit"
}

# Function to simulate tasks with a countdown timer
simulate_task() {
    task_name=$1
    echo "Simulating $task_name..."
    
    end_time=$((SECONDS + 300))  # 5 minutes = 300 seconds
    
    while [ $SECONDS -lt $end_time ]; do
        remaining=$((end_time - SECONDS))
        mins=$((remaining / 60))
        secs=$((remaining % 60))
        
        # Move cursor to top right corner and display countdown
        tput cup 0 $(($(tput cols) - 10))
        printf "%02d:%02d" $mins $secs
        
        sleep 1

        # Check if the user has pressed a key
        if read -t 0; then
            read -n 1 -s
            break
        fi
    done
    
    # Clear the timer
    tput cup 0 $(($(tput cols) - 10))
    printf "          "
    
    echo ""
}

# Function to apply a YAML file
apply_yaml() {
    read -p "Enter the path to the YAML file: " yaml_file
    kubectl apply -f $yaml_file
}

# Main script loop
while true; do
    display_menu
    read -p "Choose an option [1-7]: " option

    case $option in
        1)
            simulate_task "SCARLETEEL"
            ;;
        2)
            simulate_task "SSH_Snake"
            ;;
        3)
            simulate_task "LABRAT"
            ;;
        4)
            simulate_task "AMBERSQUID"
            ;;
        5)
            simulate_task "LLM-jacking"
            ;;
        6)
            apply_yaml
            ;;
        7)
            # Clear the timer if exiting
            tput cup 0 $(($(tput cols) - 10))
            printf "          "
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option! Please choose a valid option [1-7]."
            ;;
    esac
    echo ""
done
