LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tinyxml2

LOCAL_SRC_FILES := ../../src/tinyxml2.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../include/tinyxml2

include $(BUILD_STATIC_LIBRARY)
