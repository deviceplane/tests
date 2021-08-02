#!/bin/sh

checkForInstallation() {
	command -v "$@"
}

# Is bats installed?
if ! checkForInstallation "bats"; then
#    echoInfo " Attempting to install 'bats'"
    git clone https://github.com/bats-core/bats-core.git && cd bats-core && git checkout tags/v1.1.0 && sudo ./install.sh /usr/local
fi

# Is jq installed?
if ! checkForInstallation "jq"; then
#    echoInfo " Attempting to install 'jq'"
    if [ "$(uname -s)" = "Darwin" ]; then
        brew install jq
    else
        sudo apt install jq
    fi
fi

# Is wget installed?
if ! checkForInstallation "wget"; then
#    echoInfo " Attempting to install 'wget'"
    if [ "$(uname -s)" = "Darwin" ]; then
        brew install wget
    else
        sudo apt install wget
    fi
fi
