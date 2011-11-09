$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/galaxysplus/galaxysplus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxysplus/overlay

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES := hdpi

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

# Samsung libs wrappers
PRODUCT_PACKAGES += \
    libcamera

# Custom init
PRODUCT_COPY_FILES += \
    device/samsung/galaxysplus/init.qcom.rc:root/init.qcom.rc \
    device/samsung/galaxysplus/ueventd.qcom.rc:root/ueventd.qcom.rc

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysplus/etc/vold.fstab:system/etc/vold.fstab \
	device/samsung/galaxysplus/etc/egl.cfg:system/lib/egl/egl.cfg \
	device/samsung/galaxysplus/etc/asound.conf:system/etc/asound.conf

# Some kernel modules
PRODUCT_COPY_FILES += \
device/samsung/galaxysplus/modules/tun.ko:system/lib/modules/tun.ko	

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_galaxysplus
PRODUCT_DEVICE := galaxysplus
PRODUCT_MODEL := GT-I9001
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
