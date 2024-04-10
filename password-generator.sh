#!/bin/bash

# Function to generate and manage password
generate_and_manage_password() {
    echo "### Password Generator ###"
    read -p "Enter the desired length of the password: " length_password

    password_generated=$(openssl rand -base64 48 | head -c $length_password)

    echo "Generated password: $password_generated"

    read -p "Do you want to use this password? (yes/no): " answer

    if [ "$answer" = "yes" ]; then
        read -p "Enter a name for this password: " password_name
        echo "$password_name: $password_generated" >> password_database.db
        echo "Password saved in the database."
        read -sp "Enter a passphrase to encrypt the password database: " passphrase
    echo ""
    openssl aes-256-cbc -a -salt -in password_database.db -out password_database.enc -pass pass:"$passphrase"
    echo "Password database encrypted."
    exit 0
    else 
        echo "No password was saved."
        read -p "Do you want to generate another password? (yes/no/quit): " another_password

        case $another_password in
            yes)
                generate_and_manage_password
                ;;
            quit)
                echo "Exiting the script."
                exit 0
                ;;
            *)
                ;;
        esac
    fi
}

# Main loop to repeat the process until the user chooses a password
while true; do
    generate_and_manage_password
done

exit 0
