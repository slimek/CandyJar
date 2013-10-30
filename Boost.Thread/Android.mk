LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-thread

LOCAL_SRC_FILES := \
	pthread/once.cpp \
	pthread/thread.cpp \
	android/lockpool.cpp \
	future.cpp \
	tss_null.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include
	
include $(BUILD_STATIC_LIBRARY)
