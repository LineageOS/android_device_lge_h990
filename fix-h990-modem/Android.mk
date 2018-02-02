LOCAL_PATH:= $(call my-dir)

# This sets values in sysfs or boot image crucial to operation of H990 modem
include $(CLEAR_VARS)
LOCAL_MODULE		:= fix-h990-modem
LOCAL_SRC_FILES		:= fix-h990-modem.c
LOCAL_CFLAGS		:= -Wall -DLINEAGEOS
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
include $(BUILD_EXECUTABLE)
