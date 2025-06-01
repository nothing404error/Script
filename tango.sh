rm -rf packages/apps/DerpLauncher
git clone https://github.com/nothing-sus-2/packages_apps_DerpLauncher.git -b 13 packages/apps/DerpLauncher
#misc
rm -rf packages/resources/devicesettings
git clone https://github.com/PixelExperience/packages_resources_devicesettings.git -b thirteen packages/resources/devicesettings
# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_citrus-user
# lunch
mka derp
