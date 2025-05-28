rm -rf packages/apps/Launcher3
git clone https://github.com/nothing-sus-2/android_packages_apps_Launcher3.git packages/apps/Launcher3
# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-user
# lunch
m bacon
