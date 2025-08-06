# Set up build environment
source build/envsetup.sh
# Lunch
axion chime user vanilla
mka installclean
# Build rom
ax -b user

