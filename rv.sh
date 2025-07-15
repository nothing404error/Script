rm -rf packages/apps/crDroidSettings
git clone https://github.com/nothing404error/android_packages_apps_crDroidSettings.git packages/apps/crDroidSettings
# Set up build environment
. build/envsetup.sh
# Lunch
lunch lineage_chime-user
# Build rom
m bacon
