#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi

# Set up build environment
. b*/env*
# Lunch
lunch lineage_chime-bp2a-user
mka installclean
# Build rom
m lunaris
