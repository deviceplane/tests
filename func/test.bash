#!/usr/bin/env bash

function testInstallCLI(){
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  sudo wget -O "/usr/local/bin/deviceplane https://downloads.deviceplane.com/cli/${CLI_VERSION}/${os}/amd64/deviceplane"
  sudo chmod +x /usr/local/bin/deviceplane
  which deviceplane
  deviceplane --version
  deviceplane --help
}
