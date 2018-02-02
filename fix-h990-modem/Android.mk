LOCAL_PATH:= $(call my-dir)

# This sets values in sysfs or boot image crucial to operation of H990 modem
include $(CLEAR_VARS)
LOCAL_MODULE		:= fix-h990-modem-bootimg
LOCAL_MODULE_FILENAME	:= fix-h990-modem
LOCAL_SRC_FILES		:= fix-h990-modem.c
LOCAL_CFLAGS		:= -Wall -DLINEAGEOS
LOCAL_FORCE_STATIC_EXECUTABLE	:= true
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)/sbin
include $(BUILD_EXECUTABLE)

# The second copy is valuable for restoring values if misc is damaged, or
# for permanently modifying the boot image from recovery
include $(CLEAR_VARS)
LOCAL_MODULE		:= fix-h990-modem
LOCAL_SRC_FILES		:= fix-h990-modem.c
LOCAL_CFLAGS		:= -Wall -DLINEAGEOS
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= EXECUTABLES
include $(BUILD_EXECUTABLE)
