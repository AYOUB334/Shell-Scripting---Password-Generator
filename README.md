# Shell Scripting Password Generator

This script generates random passwords and allows the user to choose whether to use each generated password or not. If the user chooses to use a password, it is saved in a password database. The script also provides an option to encrypt the password database with a passphrase.

## How to Use

1. Clone the repository to your local machine.
2. Make sure you have `openssl` installed on your system.
3. Run the script using the command `./password_generator.sh`.
4. Follow the prompts to generate and manage passwords.

## Functionality

- The script prompts the user to enter the desired length of the password.
- It generates a random password of the specified length.
- The user is asked if they want to use the generated password.
- If yes, they are prompted to enter a name for the password, and it is saved in a password database.
- If no, they are given the option to generate another password or quit.
- The script loops until the user chooses to quit.

## Files

- `password_generator.sh`: The main shell script file.
- `password_database.db`: The password database file where passwords are saved.

## Dependencies

- `openssl`: Required for generating random passwords and encrypting the password database.

## Usage Example

- **Clone the Repository**: 
Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/AYOUB334/Shell-Scripting---Password-Generator.git
   ```
Navigate to the Project Directory Change to the directory containing the password generator script:

    
    cd Shell-Scripting---Password-Generator

- Run the Script :

Execute the script by running the following command

    ./password-generator.sh

- Follow the Prompts
The script will guide you through generating and managing passwords:

For example we choose 30

    ### Password Generator ###
    Enter the desired length of the password: 30

After generating a password, you'll be asked if you want to use it, we answer with yes.

example:

    Generated password: DHgokWd9bAiuo6gnV6vqGqEC7P90uD
    Do you want to use this password? (yes/no): yes

You'll be prompted to provide a name for it. This name will be used to identify the password in the database. 

example:

    Enter a name for this password: mypassword
    Password saved in the database.

It will be saved in the password_database.db file. The script will prompt you to enter a passphrase to encrypt the database file. This passphrase will be used to encrypt and decrypt the password database.


    Enter a passphrase to encrypt the password database : [Enter your passphrase]
    Password database encrypted.

Decrypt the Database: To decrypt the password database, use the following command:

    $openssl aes-256-cbc -d -a -in password_database.enc -out decrypted_database.db
    $enter aes-256-cbc decryption password:[Enter your passphrase]

 
You'll be prompted to enter the passphrase used for encryption. Once entered, the database will be decrypted and saved as `decrypted_database.db`.

To exit the script, choose the appropriate option when prompted.
## Security Considerations
- The password database is encrypted using AES-256-CBC encryption with the passphrase provided by the user.
- Ensure that the passphrase used for encryption is strong and kept confidential.
- Permissions on the `password_database.db` file should be set appropriately to prevent unauthorized access.


## Authors

- [@AYOUB334](https://github.com/AYOUB334)


## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ayoub-daoudi-77rfgh/)
