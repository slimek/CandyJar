LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-regex

MY_SRC := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC)/c_regex_traits.cpp \
	$(MY_SRC)/cpp_regex_traits.cpp \
	$(MY_SRC)/cregex.cpp \
	$(MY_SRC)/fileiter.cpp \
	$(MY_SRC)/icu.cpp \
	$(MY_SRC)/instances.cpp \
	$(MY_SRC)/posix_api.cpp \
	$(MY_SRC)/regex.cpp \
	$(MY_SRC)/regex_debug.cpp \
	$(MY_SRC)/regex_raw_buffer.cpp \
	$(MY_SRC)/regex_traits_defaults.cpp \
	$(MY_SRC)/static_mutex.cpp \
	$(MY_SRC)/usinstances.cpp \
	$(MY_SRC)/w32_regex_traits.cpp \
	$(MY_SRC)/wc_regex_traits.cpp \
	$(MY_SRC)/wide_posix_api.cpp \
	$(MY_SRC)/winstances.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
