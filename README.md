
# Bash Password Generator 🎉🔑

## Overview

This project is a simple **Bash Password Generator** that allows users to create secure, random passwords. Users can customize the password length, specify the number of passwords, include special characters, and save the generated passwords to a file.

## Features

- **Customizable Password Length**: Users can specify the length of the password.
- **Multiple Password Generation**: Option to generate more than one password at a time.
- **Special Characters**: Users can choose to include or exclude special characters in the password.
- **File Saving**: Option to save generated passwords to a file for future use.

## Getting Started

### Prerequisites

- **Bash**: A Unix shell, which is typically available on Linux and macOS by default.
- **OpenSSL**: Used to generate random strings for password creation.

To install OpenSSL on Linux:
```bash
sudo apt install openssl
```

### Installation

1. Clone the repository:
    
    ```bash
    git clone https://github.com/Asela0522/Bash-Password-Generator
    ```

2. Navigate to the project directory:
    
    ```bash
    cd bash-password-generator
    ```

3. Make the script executable:
    
    ```bash
    chmod +x bash-password-generator.sh
    ```

### Usage

1. Run the password generator script:
    
    ```bash
    ./bash-password-generator.sh
    ```

2. Follow the on-screen prompts to:
   - Enter the desired password length.
   - Specify how many passwords you want to generate.
   - Choose whether to include special characters.
   - Choose whether to save the generated passwords to a file.

### Example

```bash
This is a simple password generator...
Please enter the length of the password: 12
Please enter how many passwords you want to generate: 3
Do you want to include special characters in your password? (y/n): y
Do you want to save these passwords to a file? (y/n): y
```

Generated passwords will be saved to a file like this:
```bash
passwords_20240926_151254.txt
```

## File Structure

- **bash-password-generator.sh**: Main Bash script that generates passwords.
- **passwords_YYYYMMDD_HHMMSS.txt**: Generated password file (if saved), with the current timestamp.

## Contributing

Contributions are welcome! If you’d like to improve the project, feel free to fork the repository, create a new branch, and submit a pull request.


