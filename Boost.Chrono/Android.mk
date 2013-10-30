LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-chrono

LOCAL_SRC_FILES := \
	chrono.cpp \
	process_cpu_clocks.cpp \
	thread_clock.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include
	
include $(BUILD_STATIC_LIBRARY)
