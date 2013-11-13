LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-date_time

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/posix_time/posix_time_types.cpp \
	$(MY_SRC_DIR)/gregorian/date_generators.cpp \
	$(MY_SRC_DIR)/gregorian/greg_month.cpp \
	$(MY_SRC_DIR)/gregorian/greg_weekday.cpp \
	$(MY_SRC_DIR)/gregorian/gregorian_types.cpp 
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
