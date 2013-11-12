LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := CandyJar

LOCAL_WHOLE_STATIC_LIBRARIES := \
	boost-chrono \
	boost-date_time \
	boost-filesystem \
	boost-program_options \
	boost-regex \
	boost-system \
	JsonCpp \
	tinyxml2

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path,$(GIT_ROOT)/CandyJar)
$(call import-module,Boost.Chrono/proj.android/jni)
$(call import-module,Boost.DateTime/proj.android/jni)
$(call import-module,Boost.Filesystem/proj.android/jni)
$(call import-module,Boost.ProgramOptions/proj.android/jni)
$(call import-module,Boost.Regex/proj.android/jni)
$(call import-module,Boost.System/proj.android/jni)
$(call import-module,JsonCpp/proj.android/jni)
$(call import-module,tinyxml2/proj.android/jni)



include $(CLEAR_VARS)

#
# Copy the built result to lib directories
#


MY_LIB_NDK := "$(GIT_ROOT)\CandyJar\lib\Android.Ndk"
MY_LIB_ABI := "$(MY_LIB_NDK)\$(TARGET_ARCH_ABI)"

$(shell if not exist $(MY_LIB_NDK) (mkdir $(MY_LIB_NDK)))
$(shell if not exist $(MY_LIB_ABI) (mkdir $(MY_LIB_ABI)))

NOISE := $(shell copy obj\local\$(TARGET_ARCH_ABI)\*.a $(MY_LIB_ABI))
