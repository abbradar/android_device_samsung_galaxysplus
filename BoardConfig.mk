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
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOOTLOADER_BOARD_NAME := qcom

TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxyplus/include

# Qcom
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_PMEM := true

# Video
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/samsung/galaxysplus/etc/egl.cfg
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#COPYBIT_MSM7K := true
TARGET_QCOM_HDMI_OUT := true
BOARD_USE_SCREENCAP := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true

# Camera
USE_CAMERA_STUB := true
#BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_V4L2_DEVICE := /dev/video0
BOARD_CAMERA_DEVICE := /dev/video20
#BOARD_SECOND_CAMERA_DEVICE := /dev/video0

# Misc
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Radio
BOARD_MOBILEDATA_INTERFACE_NAME:= "pdp0"
BOARD_USES_LIBSECRIL_STUB := true

# Audio
#TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_VOIPMUTE := true
BOARD_USES_QCOM_RESETALL := true
#BOARD_USES_QCOM_SPEECH := true
#BOARD_USES_QCOM_LPA := true
#BOARD_PREBUILT_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#BT_ALT_STACK := true
#BRCM_BT_USE_BTL_IF := true
#BRCM_BTL_INCLUDE_A2DP := true
# workaround for our chip
BOARD_HAVE_BLUETOOTH_BCM_SEMC := true

# GPS
BOARD_GPS_LIBRARIES := libloc_api
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qcom
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4325

# Kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := console=null
TARGET_PREBUILT_KERNEL := device/samsung/galaxysplus/kernel

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
# these looks like real (obtained from fdisk blocks * 1024), but don't attempt to flash /data without some checking first.
# /system is checked, and we generate no image for /cache
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 131072

# Connectivity - Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_NAME :=  "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/firmware/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/firmware/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/etc/firmware/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt iface_name=eth0"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 29
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
BOARD_SDCARD_SDEXT_DEVICE := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p28
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

# Assert
TARGET_OTA_ASSERT_DEVICE := GT-I9001

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxysplus/BoardConfigVendor.mk
