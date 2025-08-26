rm -rf packages/modules/Bluetooth
git clone https://github.com/nothing404error/android_packages_modules_Bluetooth.git packages/modules/Bluetooth
# Set up build environment
. build/envsetup.sh

# Lunch
lunch lineage_chime-user

# Build rom
m bacon
