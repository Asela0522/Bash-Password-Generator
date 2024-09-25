#!/usr/bin/bash

# Simple Password Generator

# Step 1: Display a welcome message
echo "This is a simple password generator..."

# Step 2: Get input from the user for password length
read -p "Please enter the length of the password: " PASSWORD_LENGTH

# Validate the password length input (must be a positive number)
if ! [[ "$PASSWORD_LENGTH" =~ ^[0-9]+$ ]]; then
    echo "Error: Password length must be a positive number."
    exit 1
fi

# Step 3: Get input from the user for how many passwords to generate
read -p "Please enter how many passwords you want to generate: " PASSWORD_COUNT

# Validate the password count input (must be a positive number)
if ! [[ "$PASSWORD_COUNT" =~ ^[0-9]+$ ]]; then
    echo "Error: Password count must be a positive number."
    exit 1
fi

# Step 4: Ask the user if they want to include special characters
read -p "Do you want to include special characters in your password? (y/n): " INCLUDE_SPECIAL

# Step 5: Ask the user if they want to save the passwords to a file
read -p "Do you want to save these passwords to a file? (y/n): " SAVE_TO_FILE

# Initialize a file name if the user wants to save the passwords
if [[ "$SAVE_TO_FILE" == "y" ]]; then
    FILE_NAME="passwords_$(date +%Y%m%d_%H%M%S).txt"
    echo "Passwords will be saved to $FILE_NAME"
fi

# Step 6: Generate the desired number of passwords
for p in $(seq 1 $PASSWORD_COUNT); do
    # Generate password based on user input about special characters
    if [[ "$INCLUDE_SPECIAL" == "y" ]]; then
        # Include special characters
        PASSWORD=$(openssl rand -base64 48 | tr -dc '[:alnum:]!@#$%^&*()_+-=' | cut -c1-$PASSWORD_LENGTH)
    else
        # Only alphanumeric
        PASSWORD=$(openssl rand -base64 48 | tr -dc '[:alnum:]' | cut -c1-$PASSWORD_LENGTH)
    fi
    
    # Display the password with a number
    echo "Password $p: $PASSWORD"
    
    # If user chose to save the passwords, append to the file
    if [[ "$SAVE_TO_FILE" == "y" ]]; then
        echo "Password $p: $PASSWORD" >> $FILE_NAME
    fi
done

# Notify user if passwords were saved to a file
if [[ "$SAVE_TO_FILE" == "y" ]]; then
    echo "All passwords have been saved to $FILE_NAME."
fi
