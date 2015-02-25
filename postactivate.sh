#!/bin/sh
# postactivate script for use with ruby and virtualenvwrapper
#
# This hook is sourced after this virtualenv is activated.

export GEM_HOME=$VIRTUAL_ENV/usr/local/gems
mkdir -p $GEM_HOME || true
export PATH="$VIRTUAL_ENV/usr/local/gems/bin:$PATH"
