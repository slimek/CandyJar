LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-program_options

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/cmdline.cpp \
	$(MY_SRC_DIR)/config_file.cpp \
	$(MY_SRC_DIR)/convert.cpp \
	$(MY_SRC_DIR)/options_description.cpp \
	$(MY_SRC_DIR)/parsers.cpp \
	$(MY_SRC_DIR)/positional_options.cpp \
	$(MY_SRC_DIR)/split.cpp \
	$(MY_SRC_DIR)/utf8_codecvt_facet.cpp \
	$(MY_SRC_DIR)/value_semantic.cpp \
	$(MY_SRC_DIR)/variables_map.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
