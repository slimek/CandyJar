MY_LOCAL_PATH := $(call my-dir)

include ../../Boost.Chrono/proj.android/jni/Android.mk

include ../../Boost.System/proj.android/jni/Android.mk

LOCAL_PATH := MY_LOCAL_PATH

include $(CLEAR_VARS)

LOCAL_MODULE := CandyJar

LOCAL_WHOLE_STATIC_LIBRARIES := \
	boost-chrono \
	boost-system

CANDY_JAR_LIB := ../../lib

include $(BUILD_SHARED_LIBRARY)

$(LOCAL_BUILT_MODULE): copy-work-$(TARGET_ARCH_ABI)

copy-work-$(TARGET_ARCH_ABI):
	$(call host-mkdir,$(CANDY_JAR_LIB)/Android.Ndk)
	$(call host-mkdir,$(CANDY_JAR_LIB)/Android.Ndk/$(TARGET_ARCH_ABI))

