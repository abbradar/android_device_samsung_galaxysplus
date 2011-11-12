ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),qcom)
    include $(all-subdir-makefiles)
    include hardware/msm7k/liboverlay/Android.mk
endif
