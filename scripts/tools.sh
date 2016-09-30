#!/bin/bash

# DESCRIPTION
# Installs development tooling requirements.

printf "Installing Xcode CLI tools...\n"
xcode-select --install

read -p "Have you completed the Xcode CLI tools install (y/n)? " response
if [[ "$response" != "y" ]]; then
  printf "ERROR: Xcode CLI tools must be installed before proceeding.\n"
  exit 1
fi

printf "Installing Java...\n"
install_java "$JAVA_URL" "$JAVA_VOLUME_NAME"
