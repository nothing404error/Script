# Rom source repo
repo init -u https://github.com/Lunaris-AOSP/android -b 16 --git-lfs

# Sync the repositories
/opt/crave/resync.sh

#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi

# Set up build environment
. b*/env*
# Lunch
lunch lineage_chime-bp2a-user
mka installclean
# Build rom
m lunaris
