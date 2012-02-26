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

# TODO: update for CM9
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Boot screen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/splash/ARIESVE.rle:root/ARIESVE.rle \
    $(LOCAL_PATH)/splash/charging.rle:root/charging.rle \
    $(LOCAL_PATH)/splash/ARIESVE.rle:recovery/ARIESVE.rle \
    $(LOCAL_PATH)/splash/charging.rle:recovery/charging.rle

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
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
# TODO: uncomment for CM9
#	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.gt-i9001.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.gt-i9001.rc \
    $(LOCAL_PATH)/etc/wifi/nvram_net.txt:system/vendor/firmware/nvram_net.txt \
    $(LOCAL_PATH)/recovery/fix_reboot.sh:recovery/root/sbin/fix_reboot.sh \
    $(LOCAL_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc \
    #$(LOCAL_PATH)/etc/vold.fstab:system/etc/vold.fstab \

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/ariesve_keypad_numeric.kcm.bin:system/usr/keychars/ariesve_keypad_numeric.kcm.bin \
    $(LOCAL_PATH)/keychars/ariesve_keypad_qwerty.kcm.bin:system/usr/keychars/ariesve_keypad_qwerty.kcm.bin \
    $(LOCAL_PATH)/keylayout/ariesve_handset.kl:system/usr/keylayout/ariesve_handset.kl \
    $(LOCAL_PATH)/keylayout/ariesve_keypad.kl:system/usr/keylayout/ariesve_keypad.kl \
    $(LOCAL_PATH)/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/bthid.ko:root/lib/modules/bthid.ko \
    $(LOCAL_PATH)/modules/dhd.ko:root/lib/modules/dhd.ko

# TODO: uncomment for CM9
# Audio profiles
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/etc/audio/codec/FMRadioEar.ini:system/etc/audio/codec/FMRadioEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/FMRadioSpk.ini:system/etc/audio/codec/FMRadioSpk.ini \
#    $(LOCAL_PATH)/etc/audio/codec/MusicEar.ini:system/etc/audio/codec/MusicEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/MusicSpk.ini:system/etc/audio/codec/MusicSpk.ini \
#    $(LOCAL_PATH)/etc/audio/codec/RecHeadSetMic.ini:system/etc/audio/codec/RecHeadSetMic.ini \
#    $(LOCAL_PATH)/etc/audio/codec/RecMainMic.ini:system/etc/audio/codec/RecMainMic.ini \
#    $(LOCAL_PATH)/etc/audio/codec/RecSubMic.ini:system/etc/audio/codec/RecSubMic.ini \
#    $(LOCAL_PATH)/etc/audio/codec/RingtoneEar.ini:system/etc/audio/codec/RingtoneEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/RingtoneSpk.ini:system/etc/audio/codec/RingtoneSpk.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceCall3pEar.ini:system/etc/audio/codec/VoiceCall3pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceCall4pEar.ini:system/etc/audio/codec/VoiceCall4pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceCallBT.ini:system/etc/audio/codec/VoiceCallBT.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceCallRcv.ini:system/etc/audio/codec/VoiceCallRcv.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceCallSpk.ini:system/etc/audio/codec/VoiceCallSpk.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceRecHeadSetMic.ini:system/etc/audio/codec/VoiceRecHeadSetMic.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoiceRecMainMic.ini:system/etc/audio/codec/VoiceRecMainMic.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoipCall3pEar.ini:system/etc/audio/codec/VoipCall3pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoipCall4pEar.ini:system/etc/audio/codec/VoipCall4pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoipCallRcv.ini:system/etc/audio/codec/VoipCallRcv.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VoipCallSpk.ini:system/etc/audio/codec/VoipCallSpk.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VtCall3pEar.ini:system/etc/audio/codec/VtCall3pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VtCall4pEar.ini:system/etc/audio/codec/VtCall4pEar.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VtCallBT.ini:system/etc/audio/codec/VtCallBT.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VtCallRcv.ini:system/etc/audio/codec/VtCallRcv.ini \
#    $(LOCAL_PATH)/etc/audio/codec/VtCallSpk.ini:system/etc/audio/codec/VtCallSpk.ini

PRODUCT_PACKAGES += \
    librs_jni \
    lights.msm7x30 \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils \
    libmemalloc \
    liboverlay \
    libtilerenderer \
    libQcomUI \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw \
    com.android.future.usb.accessory \
#    gps.ancora \

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# TODO: uncomment for CM9
#$(call inherit-product, frameworks/base/build/phone-hdpi-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/samsung/galaxysplus/device-vendor.mk)

PRODUCT_LOCALES += hdpi

