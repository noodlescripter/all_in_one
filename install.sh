#!/bin/bash

# Create the sSoftware directory in the home directory
mkdir ~/sSoftware

# Navigate to the sSoftware directory
cd ~/sSoftware

# Download the java_maven.zip file from the google drive
git clone https://github.com/alamhamim/all_in_one.git

cd all_in_one
rm -r .git
rm *.sh
rm *.md



# Unzip the java_maven.zip file
unzip java_maven.zip



# Remove the java_maven.zip file
rm java_maven.zip

rm -r __MACOSX


#!/bin/bash

# Check if the user is using zsh
if [[ "$SHELL" == "/bin/zsh" ]]; then
    # If the user is using zsh, add the environment variables to .zshrc
    echo 'export JAVA_HOME=~/sSoftware/all_in_one/java_maven/jdk-11.0.18.jdk/Contents/Home' >> ~/.zshrc
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.zshrc
    echo 'export MAVEN_HOME=~/sSoftware/all_in_one/java_maven/apache-maven-3.9.0' >> ~/.zshrc
    echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.zshrc
# Check if the user is using bash
elif [[ "$SHELL" == "/bin/bash" ]]; then
    # If the user is using bash, add the environment variables to .bashrc or .bash_profile
    if [ -f "$HOME/.bashrc" ]; then
        echo 'export JAVA_HOME=~/sSoftware/all_in_one/java_maven/jdk-11.0.18.jdk/Contents/Home' >> ~/.bashrc
        echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
        echo 'export MAVEN_HOME=~/sSoftware/all_in_one/java_maven/apache-maven-3.9.0' >> ~/.bashrc
        echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.bashrc
    elif [ -f "$HOME/.bash_profile" ]; then
        echo 'export JAVA_HOME=~/sSoftware/all_in_one/java_maven/jdk-11.0.18.jdk/Contents/Home' >> ~/.bash_profile
        echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bash_profile
        echo 'export MAVEN_HOME=~/sSoftware/all_in_one/java_maven/apache-maven-3.9.0' >> ~/.bash_profile
        echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.bash_profile
    fi
fi



echo "THANK YOU!!! For installing :)"
#THE END!
