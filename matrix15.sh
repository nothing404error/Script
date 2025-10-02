rm -rf packages/apps/DocumentsUI
git clone https://github.com/nothing404error/android_packages_apps_DocumentsUI.git packages/apps/DocumentsUI
# Set up build environment
. build/envsetup.sh
# Lunch
lunch lineage_citrus-bp1a-user
mka installclean
# Build rom
brunch citrus
