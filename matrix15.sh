# Set up build environment
. build/envsetup.sh
# Lunch
lunch lineage_citrus-bp1a-user
mka installclean
# Build rom
brunch citrus
