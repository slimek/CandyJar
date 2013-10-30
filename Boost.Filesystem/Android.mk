LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := boost-filesystem

LOCAL_SRC_FILES := \
	codecvt_error_category.cpp \
	operations.cpp \
	path.cpp \
	path_traits.cpp \
	portability.cpp \
	unique_path.cpp \
	utf8_codecvt_facet.cpp
	
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include
	
include $(BUILD_STATIC_LIBRARY)
