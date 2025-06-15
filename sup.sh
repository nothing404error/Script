rm -rf kernel/xiaomi/chime
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git -b viola kernel/xiaomi/chime
# set build environment
. build/envsetup.sh
#Preparing device
lunch superior_chime-user
# lunch
m bacon
