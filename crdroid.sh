#!/bin/bash

rm -rf .repo/local_manifests/


# Rom source repo
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Clone local_manifests repository
git clone -b crdroid7 https://github.com/nothing-sus-2/local_manifests.git .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync
/opt/crave/resync.sh
echo "============="
echo "Sync success"
echo "============="


# Set up build environment
source build/envsetup.sh
echo "====== Envsetup Done ======="

# Build rom
brunch juice
