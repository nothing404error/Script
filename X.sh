#!/bin/bash
# Set up build environment
. build/envsetup.sh
# Lunch
lunch infinity_chime-user
# Build rom
m bacon
