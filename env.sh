#!/bin/sh

export TT_CONTROLLER_BASE_URL="https://cloud.dev.deviceplane.com/api"
export TT_PROJECT=""
export TT_ACCESS_KEY=""

######## cli
export TT_CLI_VERSION=""
######################################################################

######## agent
export TT_AGENT_VERSION=""
export TT_REGISTRATION_TOKEN=""
######################################################################


echo ""
echo "----- CONFIG -----"
echo ""
printenv | grep TT_
echo ""
echo "------------------"
echo ""
