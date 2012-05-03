# Copyright (C) 2012 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES += hdpi

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

# Boot screen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/splash/ARIESVE.rle:root/ARIESVE.rle \
    $(LOCAL_PATH)/splash/charging.rle:root/charging.rle \
    $(LOCAL_PATH)/splash/ARIESVE.rle:recovery/ARIESVE.rle \
    $(LOCAL_PATH)/splash/charging.rle:recovery/charging.rle \

# Support files
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.gt-i9001.rc \
    $(LOCAL_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc \

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fix_reboot.sh:recovery/root/sbin/fix_reboot.sh \

# Configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/nvram_net.txt:system/vendor/firmware/nvram_net.txt \
    $(LOCAL_PATH)/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/etc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/ariesve_keypad_numeric.kcm.bin:system/usr/keychars/ariesve_keypad_numeric.kcm.bin \
    $(LOCAL_PATH)/keychars/ariesve_keypad_qwerty.kcm.bin:system/usr/keychars/ariesve_keypad_qwerty.kcm.bin \
    $(LOCAL_PATH)/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/keylayout/ariesve_handset.kl:system/usr/keylayout/ariesve_handset.kl \
    $(LOCAL_PATH)/keylayout/ariesve_keypad.kl:system/usr/keylayout/ariesve_keypad.kl \
    $(LOCAL_PATH)/keylayout/quantom-touchscreen.kl:system/usr/keylayout/quantom-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \

# Misc
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/get_macaddrs:system/bin/get_macaddrs \

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/modules/bthid.ko:root/lib/modules/bthid.ko \
    $(LOCAL_PATH)/prebuilt/modules/dhd.ko:root/lib/modules/dhd.ko \

# HAL modules and libraries
PRODUCT_PACKAGES += \
    librs_jni \
    lights.msm7x30 \
    sensors.msm7x30 \
    gralloc.msm7x30 \
    overlay.default \
    hwcomposer.msm7x30 \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils \
    libmemalloc \
    liboverlay \
    libtilerenderer \

# Audio/video codecs
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw \

# Misc
PRODUCT_PACKAGES += com.android.future.usb.accessory

# Output images
PRODUCT_PACKAGES += \
	e2fsck \
	badblocks \
    make_ext4fs \
    setup_fs \

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, vendor/samsung/galaxysplus/device-vendor.mk)
