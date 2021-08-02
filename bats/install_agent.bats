#!/usr/bin/env bash

. ./func/include.bash

@test "Initialize tests" {
  stopTest
}

@test "Install Agent" {
  startTest
  testInstallAgent
  stopTest
}
