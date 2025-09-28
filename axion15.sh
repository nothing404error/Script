rm -rf packages/apps/Launcher3
git clone https://github.com/nothing404error/android_packages_apps_Launcher3.git -b lineage-22.2 packages/apps/Trebuchet
# Set up build environment
source build/envsetup.sh
source build/envsetup.sh
# Lunch
axion citrus user gms pico
mka installclean
# Build rom
ax -b user
