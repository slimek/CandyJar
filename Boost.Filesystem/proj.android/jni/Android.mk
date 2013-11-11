LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-filesystem

MY_SRC_DIR := ../../src

LOCAL_SRC_FILES := \
	$(MY_SRC_DIR)/codecvt_error_category.cpp \
	$(MY_SRC_DIR)/operations.cpp \
	$(MY_SRC_DIR)/path.cpp \
	$(MY_SRC_DIR)/path_traits.cpp \
	$(MY_SRC_DIR)/portability.cpp \
	$(MY_SRC_DIR)/unique_path.cpp \
	$(MY_SRC_DIR)/utf8_codecvt_facet.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../../include
	
include $(BUILD_STATIC_LIBRARY)
