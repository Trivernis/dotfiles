#!/usr/bin/bash
until gpg --pinentry-mode loopback $@ || (( count++ >= 5 )); do echo "Try again!"; done
