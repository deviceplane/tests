#!/usr/bin/env bash

. test/func/include.bash

@test "Initialize tests" {
  stopTest
}

@test "Install CLI" {
  startTest
  testInstallCLI
  stopTest
}
