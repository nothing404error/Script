rm -rf packages/apps/DocumentsUI
git clone https://github.com/nothing404error/android_packages_apps_DocumentsUI.git packages/apps/DocumentsUI
# Set up build environment
source build/envsetup.sh
source build/envsetup.sh
# Lunch
axion citrus user gms pico
mka installclean
# Build rom
ax -b user
