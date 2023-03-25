#!/bin/bash

# Create the sSoftware directory in the home directory
mkdir ~/sSoftware

# Navigate to the sSoftware directory
cd ~/sSoftware

# Download the java_maven.zip file from the google drive
wget https://github.com/alamhamim/all_in_one/blob/main/java_maven.zip

# Unzip the java_maven.zip file
unzip java_maven.zip

# Remove the java_maven.zip file
rm java_maven.zip

#Adding them in the system variable
#!/bin/bash

# Check if the user is using zsh
if [ -n "$ZSH_VERSION" ]; then
    # If the user is using zsh, add the environment variables to .zshrc
    echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
    echo 'export JAVA_HOME=~/sSoftware/jdk-11.0.18.jdk/Contents/Home' >> ~/.zshrc
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.zshrc
    echo 'export MAVEN_HOME=~/sSoftware/apache-maven-3.9.0' >> ~/.zshrc
    echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.zshrc
# Check if the user is using bash
elif [ -n "$BASH_VERSION" ]; then
    # If the user is using bash, add the environment variables to .bashrc or .bash_profile
    if [ -f "$HOME/.bashrc" ]; then
        echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.bashrc
        echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc
        echo 'export JAVA_HOME=~/sSoftware/jdk-11.0.18.jdk/Contents/Home' >> ~/.bashrc
        echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
        echo 'export MAVEN_HOME=~/sSoftware/apache-maven-3.9.0' >> ~/.bashrc
        echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.bashrc
    elif [ -f "$HOME/.bash_profile" ]; then
        echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.bash_profile
        echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bash_profile
        echo 'export JAVA_HOME=~/sSoftware/jdk-11.0.18.jdk/Contents/Home' >> ~/.bash_profile
        echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bash_profile
        echo 'export MAVEN_HOME=~/sSoftware/apache-maven-3.9.0' >> ~/.bash_profile
        echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.bash_profile
    fi
fi

echo "THANK YOU!!! For installing :)"
#THE END!
