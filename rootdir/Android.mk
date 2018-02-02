LOCAL_PATH:= $(call my-dir)

# init file for extras on the H990* variants of the LGE V20
include $(CLEAR_VARS)
LOCAL_MODULE		:= init.device.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.device.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# fstab file for H990* extra flash devices
include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.h990
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/fstab.h990
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
