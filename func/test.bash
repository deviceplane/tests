#!/usr/bin/env bash

function testInstallCLI(){
  wget -O /usr/local/bin/deviceplane https://downloads.deviceplane.com/cli/latest/darwin/amd64/deviceplane
  chmod +x /usr/local/bin/deviceplane
  which deviceplane
  deviceplane --version
  deviceplane --help
}
