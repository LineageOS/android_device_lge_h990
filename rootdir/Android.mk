LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# Device init scripts
include $(CLEAR_VARS)
LOCAL_MODULE       := rild2.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/rild2.rc
LOCAL_VENDOR_MODULE    := true
LOCAL_MODULE_RELATIVE_PATH := init
include $(BUILD_PREBUILT)
