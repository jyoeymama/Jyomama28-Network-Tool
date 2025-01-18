#!/bin/bash

# Function to display the banner
display_banner() {
    clear
    echo "     __                                             ________   ______  "
    echo "    |__|___.__. ____   _____ _____    _____ _____   \\_____  \\ /  __  \\ "
    echo "    |  <   |  |/  _ \\ /     \\\\__  \\  /     \\\\__  \\   /  ____/ >      < "
    echo "    |  |\\___  (  <_> )  Y Y  \\/ __ \\|  Y Y  \\/ __ \\_/       \\/   --   \\"
    echo "/\\__|  |/ ____|\\____/|__|_|  (____  /__|_|  (____  /\\_______ \\______  /"
    echo "\\______|\\/                 \\/     \\/      \\/     \\/         \\/      \\/ "
    echo ""
    echo "               Welcome to the jyomama28 Network Tool!"
    echo ""
}

# Function to display the menu
display_menu() {
    echo "1) Quick Scan"
    echo "2) Port Scan"
    echo "3) OS Detection"
    echo "4) Exit"
    echo ""
    read -p "Enter your choice: " choice
}

# Function to perform scans
perform_scan() {
    case $choice in
        1)
            read -p "Enter target IP or domain: " target
            echo "Running Quick Scan on $target..."
            nmap -T4 -F "$target"
            ;;
        2)
            read -p "Enter target IP or domain: " target
            echo "Running Port Scan on $target..."
            nmap -p- "$target"
            ;;
        3)
            read -p "Enter target IP or domain: " target
            echo "Performing OS Detection on $target..."
            nmap -O "$target"
            ;;
        4)
            echo "Exiting... Thanks for using jyomama28 Tool!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please select a valid option."
            ;;
    esac
}

# Main script logic
while true; do
    display_banner
    display_menu
    perform_scan
    echo ""
    read -p "Press Enter to continue..."
done
