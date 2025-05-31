rm -rf packages/apps/ViPER4AndroidFX
# set build environment
. build/envsetup.sh
#Preparing device
lunch ethereal_chime-user
# lunch
make ethereal
