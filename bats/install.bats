#!/usr/bin/env bash

. ./func/include.bash

@test "Initialize tests" {
  stopTest
}

@test "Install CLI" {
  startTest
  testInstallCLI
  stopTest
}
