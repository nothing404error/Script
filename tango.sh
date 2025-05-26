rm -rf packages/apps/DerpLauncher
git clone https://github.com/nothing-sus-2/packages_apps_DerpLauncher.git -b 13 packages/apps/DerpLauncher
# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_chime-user
# lunch
mka derp
