# Copyright (C) 2010 The Android Open Source Project
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


# This file is the device-specific product definition file for
# crespo. It lists all the overlays, files, modules and properties
# that are specific to this hardware: i.e. those are device-specific
# drivers, configuration files, settings, etc...

# Note that crespo is not a fully open device. Some of the drivers
# aren't publicly available in all circumstances, which means that some
# of the hardware capabilities aren't present in builds where those
# drivers aren't available. Such cases are handled by having this file
# separated into two halves: this half here contains the parts that
# are available to everyone, while another half in the vendor/ hierarchy
# augments that set with the parts that are only relevant when all the
# associated drivers are available. Aspects that are irrelevant but
# harmless in no-driver builds should be kept here for simplicity and
# transparency. There are two variants of the half that deals with
# the unavailable drivers: one is directly checked into the unreleased
# vendor tree and is used by engineers who have access to it. The other
# is generated by setup-makefile.sh in the same directory as this files,
# and is used by people who have access to binary versions of the drivers
# but not to the original vendor tree. Be sure to update both.

DEVICE_PACKAGE_OVERLAYS := device/samsung/galaxysplus/overlay

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/galaxysplus/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Boot screen
PRODUCT_COPY_FILES += \
    device/samsung/galaxysplus/splash/ARIESVE.rle:root/ARIESVE.rle \
    device/samsung/galaxysplus/splash/charging.rle:root/charging.rle \
    device/samsung/galaxysplus/splash/ARIESVE.rle:recovery/ARIESVE.rle \
    device/samsung/galaxysplus/splash/charging.rle:recovery/charging.rle

# Firmware
PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcm4329/firmware/fw_bcm4329.bin:system/lib/firmware/fw_bcm4329.bin \
    hardware/broadcom/wlan/bcm4329/firmware/fw_bcm4329_apsta.bin:system/lib/firmware/fw_bcm4329_apsta.bin

# Libraries
PRODUCT_PACKAGES += \
    libcamera

# apns config file
PRODUCT_COPY_FILES += \
        vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Bluetooth MAC Address
PRODUCT_PACKAGES += \
	bdaddr_read

# Init files
PRODUCT_COPY_FILES += \
    device/samsung/galaxysplus/init.qcom.rc:root/init.qcom.rc \
    device/samsung/galaxysplus/ueventd.qcom.rc:root/ueventd.qcom.rc

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Service Mode Secret Code
PRODUCT_PACKAGES += \
	SamsungServiceMode

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=20 \
       ro.telephony.ril_class=samsung \
       mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
       dalvik.vm.heapsize=32m

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysplus/etc/vold.fstab:system/etc/vold.fstab \
	device/samsung/galaxysplus/etc/egl.cfg:system/lib/egl/egl.cfg \
	device/samsung/galaxysplus/etc/asound.conf:system/etc/asound.conf

# Some kernel modules
PRODUCT_COPY_FILES += \
device/samsung/galaxysplus/modules/tun.ko:system/lib/modules/tun.ko

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES := hdpi

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/galaxysplus/galaxysplus-vendor.mk)

