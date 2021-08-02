#!/bin/sh

######## These variables MUST be updated by the user / automation task
export CLI_VERSION="latest"
######################################################################

######## These variables can be left with their defaults if necessary
######################################################################

echo ""
echo "----- CONFIG -----"
echo ""
echo "${!CLI_VERSION*}: " "$CLI_VERSION"
echo ""
echo "------------------"
echo ""
