LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-date_time

MY_SRC := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC)/gregorian/date_generators.cpp \
	$(MY_SRC)/gregorian/greg_month.cpp \
	$(MY_SRC)/gregorian/greg_weekday.cpp \
	$(MY_SRC)/gregorian/gregorian_types.cpp \
	$(MY_SRC)/posix_time/posix_time_types.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
