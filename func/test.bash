#!/usr/bin/env bash

function testInstallCLI(){
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  sudo wget -O /usr/local/bin/deviceplane "https://downloads.deviceplane.com/cli/${TT_CLI_VERSION}/${os}/amd64/deviceplane"
  sudo chmod +x /usr/local/bin/deviceplane
  which deviceplane
  deviceplane --version
  deviceplane --help
}

function testInstallAgent(){
  curl https://downloads.deviceplane.com/install.sh > ./install.sh
  chmod +x ./install.sh
  CONTROLLER="$TT_CONTROLLER_BASE_URL" VERSION="$TT_AGENT_VERSION" REGISTRATION_TOKEN="$TT_REGISTRATION_TOKEN" PROJECT="$TT_PROJECT" ./install.sh
  log_file="/tmp/tt_logs.txt"
  journalctl -u deviceplane-agent > "$log_file"
  systemctl status deviceplane-agent.service >> "$log_file"
  [ -z "$(cat "$log_file" | grep "error")" ]
}

function testSSH(){
  [ ! -z "$(dplane device list | grep online)" ]
  device="$(dplane device list | grep online | awk 'NR==1 {print; exit}' | awk '{print $2}')"
  [ ! -z "$device" ]
  echo "testing" > "/tmp/$device"
  dplane ssh "$device" cat "/tmp/$device"
}
