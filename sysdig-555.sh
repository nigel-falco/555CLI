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

# Function to simulate SCARLETEEL
simulate_scarleteel() {
    echo "Simulating SCARLETEEL..."
    # Add your simulation logic here
}

# Function to simulate SSH_Snake
simulate_ssh_snake() {
    echo "Simulating SSH_Snake..."
    # Add your simulation logic here
}

# Function to simulate LABRAT
simulate_labrat() {
    echo "Simulating LABRAT..."
    # Add your simulation logic here
}

# Function to simulate AMBERSQUID
simulate_ambersquid() {
    echo "Simulating AMBERSQUID..."
    # Add your simulation logic here
}

# Function to simulate LLM-jacking
simulate_llm_jacking() {
    echo "Simulating LLM-jacking..."
    # Add your simulation logic here
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
            simulate_scarleteel
            ;;
        2)
            simulate_ssh_snake
            ;;
        3)
            simulate_labrat
            ;;
        4)
            simulate_ambersquid
            ;;
        5)
            simulate_llm_jacking
            ;;
        6)
            apply_yaml
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option! Please choose a valid option [1-7]."
            ;;
    esac
    echo ""
done
