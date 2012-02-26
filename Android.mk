ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),qcom)
include $(call first-makefiles-under,$(call my-dir))
endif
