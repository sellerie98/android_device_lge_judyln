#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from lge sdm845-common
-include device/lge/sdm845-common/BoardConfigCommon.mk

-include frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk

DEVICE_PATH := device/lge/judyln

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Kernel
TARGET_KERNEL_CONFIG := judyln_lao_com-perf_defconfig
BOARD_KERNEL_CMDLINE += androidboot.hardware=judyln
#TARGET_PREBUILT_KERNEL := device/lge/judyln/prebuilt/zImage

# Recommended vendor image to be used: https://drive.google.com/open?id=1wKjsVeCc8QC7nDOSOxSEuPz4QmS8RCnA
# Place it in 'device/lge/judyln'
BOARD_PREBUILT_VENDORIMAGE := $(DEVICE_PATH)/vendor.img
#BOARD_PREBUILT_BOOTIMAGE := $(DEVICE_PATH)/boot.img

# Match the security patch with devices fingerprint to pass SafetyNet
#PLATFORM_SECURITY_PATCH := 2019-05-01

DEVICE_MANIFEST_FILE := device/lge/judyln/manifest.xml

#Fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.judyln

# Inherit from the proprietary version
-include vendor/lge/judyln/BoardConfigVendor.mk
