LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tinyxml2-static
LOCAL_MODULE_FILENAME := tinyxml2

LOCAL_SRC_FILES := ../../tinyxml2.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../include/tinyxml2

include $(BUILD_STATIC_LIBRARY)
