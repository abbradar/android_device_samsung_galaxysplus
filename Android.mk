ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),qcom)
    include $(all-subdir-makefiles)
    include hardware/msm7k/libgralloc/Android.mk
endif
