#!/bin/bash

if [ $# -eq 2 ]; then
    echo "Command line arguments demo starts..."
    echo "$0"
    echo "$1"
    echo "$2"
    echo "$3"
    echo "$4"
    echo "$*"
    java --version
    echo "$?"
else
    echo "Please pass 2 arguments."
    echo "Usage: sh $0 chaitra ajay"
fi

# Check if 'java' command exists
if command -v java &> /dev/null; then
    # 'java' command is installed
    echo "Java is installed."
else
    # 'java' command is not installed
    echo "Java is not installed. Installing java..."

    # Check the package manager and install Java accordingly
if command -v yum &> /dev/null; then
        # For Red Hat-based systems
        sudo yum install -y java
else
        echo "Unsupported package manager. Please install Java manually."
exit 1
 fi
