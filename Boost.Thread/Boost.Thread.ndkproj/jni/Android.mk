LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-thread

MY_SRC_DIR := ../..

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/pthread/once.cpp \
	$(MY_SRC_DIR)/pthread/thread.cpp \
	$(MY_SRC_DIR)/future.cpp \
	$(MY_SRC_DIR)/tss_null.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
