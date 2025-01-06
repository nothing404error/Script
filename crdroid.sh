#!/bin/bash

rm -rf .repo/local_manifests/


# Rom source repo
repo init -u https://github.com/crdroid-13-fork/android.git -b 13.0 --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Clone local_manifests repository
git clone -b main https://github.com/nothing-sus-2/local_manifests.git .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync the repositories
/opt/crave/resync.sh
echo "============================"


# Set up build environment
source build/envsetup.sh
echo "====== Envsetup Done ======="

# Lunch
lunch lineage_chime-user
echo "============="


# Build rom
mka bacon
