LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-system

MY_SRC_DIR := ../..

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/error_code.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
