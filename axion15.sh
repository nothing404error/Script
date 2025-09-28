# Set up build environment
source build/envsetup.sh
source build/envsetup.sh
# Lunch
axion citrus user gms pico
mka installclean
# Build rom
ax -b user
