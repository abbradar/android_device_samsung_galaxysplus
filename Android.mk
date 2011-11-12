ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),qcom)
    include hardware/msm7k/libcamera/Android.mk
    include hardware/msm7k/liboverlay/Android.mk
endif
