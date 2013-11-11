LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := JsonCpp

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/json_reader.cpp \
	$(MY_SRC_DIR)/json_value.cpp \
	$(MY_SRC_DIR)/json_writer.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../.. \
	$(LOCAL_PATH)/../../../include

include $(BUILD_STATIC_LIBRARY)
