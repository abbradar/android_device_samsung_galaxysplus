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

# Platform and CPU
TARGET_BOARD_PLATFORM := msm7x30

TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

TARGET_BOOTLOADER_BOARD_NAME := qcom
TARGET_OTA_ASSERT_DEVICE := ariesve,qcom,GT-I9001,GalaxySPlus

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_DOWNLOAD_MODE := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxyplus/include

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Misc
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Kernel
TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxysplus/include

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := bcm4329
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "iface_name=eth0 firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/vendor/firmware/nvram_net.txt"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# For different versions of brcm_patchram_plus
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true
BOARD_HAVE_BLUETOOTH_BCM_SEMC := true

# Radio
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"
BOARD_USES_LIBSECRIL_STUB := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_AUDIO_RESETALL := true
TARGET_PROVIDES_LIBAUDIO := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# GPU
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/samsung/galaxysplus/etc/egl.cfg
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
USE_OPENGL_RENDERER := true
BBOARD_USES_OVERLAY := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := false
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := false
TARGET_FORCE_CPU_UPLOAD := true

# Camera
USE_CAMERA_STUB := true
BOARD_CAMERA_DEVICE := /dev/video20
BOARD_CAMERA_USE_GETBUFFERINFO := true
BUILD_WITH_FULL_STAGEFRIGHT := true
Y_U_NO_HAVE_CAMERA := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_USE_CAF_LIBCAMERA := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7k
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Storage
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 29
BOARD_MTP_DEVICE := "/dev/usb_mtp_gadget"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# Partitions
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_DEVICE := /dev/block/mmcblk0p17
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p28
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# Kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := console=null
TARGET_PREBUILT_KERNEL := device/samsung/galaxysplus/kernel

# Partition sizes
# these looks like real (obtained from fdisk blocks * 1024), but don't attempt to flash /data without some checking first.
# /system is checked, and we generate no image for /cache
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USES_MMCUTILS := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxysplus/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxysplus/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/galaxysplus/init.recovery.rc

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxysplus/BoardConfigVendor.mk

# Include ariesve specific stuff
-include device/samsung/ariesve-common/Android.mk
