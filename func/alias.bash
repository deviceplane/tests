#!/usr/bin/env bash

# Print to stdout even if no failure
function print(){
  echo "# $@                                " >&3
}

# Log to file based on current test fixture's name
function log(){
  echo "$@" >> "/tmp/bats_$BATS_TEST_NAME"
}

# startTest ensures that test fixtures subsequent to a failure do not run
function startTest(){
  local FILE="/tmp/bats.test"
  if [ -f "$FILE" ]; then
    skip
  fi
  echo 'start' > "$FILE"
}

# stopTest ensures that test fixtures subsequent to a failure do not run
function stopTest(){
  local FILE="/tmp/bats.test"
  if [ -f "$FILE" ]; then
    rm "$FILE"
  fi
}

# dplane uses variables from conf/env.sh to run the cli
function dplane(){
  deviceplane --project="$CLI_PROJECT" --access-key="$CLI_PROJECT" $@
}
