#!/usr/bin/env bash

. ./func/include.bash

@test "Initialize tests" {
  stopTest
}

@test "SSH into device" {
  startTest
  testSSH
  stopTest
}
