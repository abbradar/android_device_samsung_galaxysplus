# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_DOWNLOAD_MODE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := qcom

BOARD_USES_OVERLAY := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Camera
USE_CAMERA_STUB := true
BOARD_CAMERA_LIBRARIES := libcamera

# Video Devices
BOARD_V4L2_DEVICE := /dev/video20
#BOARD_CAMERA_DEVICE := /dev/video0
#BOARD_SECOND_CAMERA_DEVICE := /dev/video

# Qcom
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Misc
JS_ENGINE := v8
BOARD_USES_LIBSECRIL_STUB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# gps
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qcom
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_USES_GPSWRAPPER := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# Kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
TARGET_PREBUILT_KERNEL := device/samsung/galaxysplus/kernel

# Partition sizes
# TODO: recheck
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 471859200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 274464768
BOARD_FLASH_BLOCK_SIZE := 131072

# Connectivity - Wi-Fi
#WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/lib/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/lib/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME :=  "bcm4329"
WIFI_DRIVER_MODULE_ARG  :=  "firmware_path=/system/lib/firmware/fw_bcm4329.bin nvram_path=/system/lib/firmware/nvram_net.txt"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxysplus/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxysplus/recovery/graphics.c
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Partitions
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_DEVICE := /dev/block/mmcblk0p17
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p28
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

# Video
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/samsung/galaxysplus/etc/egl.cfg

# assert
TARGET_OTA_ASSERT_DEVICE := GT-I9001

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxysplus/BoardConfigVendor.mk
