LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES :=  \
    aescrypt.c      \
    aeskey.c        \
    aestab.c

LOCAL_SHARED_LIBRARIES := \
	libc \
	libstdc++ \
	libm

LOCAL_MODULE := libaes
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
