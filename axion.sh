#!/bin/bash
# Rom source repo
repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.0 --git-lfs
# Sync the repositories
/opt/crave/resync.sh
# Set up build environment
source build/envsetup.sh
# Lunch
axion chime user vanilla
mka installclean
# Build rom
ax -b user

