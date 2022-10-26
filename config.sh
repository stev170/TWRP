#!/bin/bash

# telegram
#export TG_CHAT_ID: -1001573823621
#export TG_TOKEN: ENCRYPTED[!98e054fa9aab8ca43b965ec07db0e84f1834205d4f40954a8f8134e6e951aadb00574466c6b82828eef4860da34925af!]

# Device
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp"
export TWRP_BRANCH="twrp-12.1"
#export TWRP_BRANCH="twrp-test"
export DT_LINK="https://github.com/erwinabs/android_device_xiaomi_ginkgo-twrp.git -b android-12.1"

export DEVICE="ginkgo"
export OEM="xiaomi"
#export PLATFORM="msm8998"
export TARGET="recoveryimage"
export TW_DEVICE_VERSION="1"
export OUTPUT="recovery.img"
export FILENAME="twrp*.img"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://github.com/faoliveira78/android_kernel_oneplus_msm8998"

# Extra Command
export EXTRA_CMD=""

# Not Recommended to Change
if [ ! -e $HOME/work ]; then
mkdir $HOME/work
fi

export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
