LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-chrono

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/chrono.cpp \
	$(MY_SRC_DIR)/process_cpu_clocks.cpp \
	$(MY_SRC_DIR)/thread_clock.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
