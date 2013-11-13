#
# Store the local path
# - Otherwise it would be overwriten by other Android.mk files.
#

MY_LOCAL_PATH := $(call my-dir)


#
# Build each libraries
#

include ../../Boost.Chrono/proj.android/jni/Android.mk
include ../../Boost.System/proj.android/jni/Android.mk


#
# Build a dummy local module
# - Use this to launch the copy commands.
#

LOCAL_PATH := $(MY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := CandyJar

LOCAL_WHOLE_STATIC_LIBRARIES := \
	boost-chrono \
	boost-system

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

#
# Make output directories, then copy all built libraries
#

CANDY_LIB := ../../lib
MY_ARCH_ABI := $(TARGET_ARCH_ABI)

# $(call candy-copy,lib-name)
define candy-copy
  $(call host-cp,obj/local/$@/$1,$(CANDY_LIB)/Android.Ndk/$@/$1)
endef


$(LOCAL_BUILT_MODULE): $(MY_ARCH_ABI)

$(MY_ARCH_ABI):
	$(call host-mkdir,$(CANDY_LIB)/Android.Ndk)
	$(call host-mkdir,$(CANDY_LIB)/Android.Ndk/$@)
	$(call candy-copy,libboost-chrono.a)	



