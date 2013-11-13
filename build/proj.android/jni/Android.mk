#
# Store the local path
# - Otherwise it would be overwriten by other Android.mk files.
#

MY_LOCAL_PATH := $(call my-dir)


#
# Build each libraries
#

# $(call candy-make,lib-dir)
define candy-make
../../$1/proj.android/jni/Android.mk
endef

include $(call candy-make,Boost.Chrono)
include $(call candy-make,Boost.System)


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


#
# Make output directories, then copy all built libraries
#

# My variables
CANDY_LIB := ../../lib
MY_ARCH_ABI := $(TARGET_ARCH_ABI)

# $(call candy-copy,lib-name)
define candy-copy
  $(call host-cp,obj/local/$@/$1,$(CANDY_LIB)/Android.Ndk/$@/$1)
endef

all: $(MY_ARCH_ABI)

$(MY_ARCH_ABI): $(LOCAL_BUILT_MODULE)
	$(call host-mkdir,$(CANDY_LIB)/Android.Ndk)
	$(call host-mkdir,$(CANDY_LIB)/Android.Ndk/$@)
	$(call candy-copy,libboost-chrono.a)
	$(call candy-copy,libboost-system.a)


#
# Clean the output directories
#

# $(call candy-clean,lib-name)
define candy-clean
  $(call host-rm,$(CANDY_LIB)/Android.Ndk/$(subst -clean,,$@)/$1.a)
endef

clean: $(MY_ARCH_ABI)-clean

$(MY_ARCH_ABI)-clean:
	$(call candy-clean,libboost-chrono)
	$(call candy-clean,libboost-system)


#
# Appendix
# : Validate all necessary NDK undocumented macros are defined 
#

ifndef LOCAL_BUILT_MODULE
$(error LOCAL_BUILT_MODULE not defined)
endif

ifndef host-mkdir
$(error host-mkdir not defined)
endif

ifndef host-cp
$(error host-cp not defined)
endif

ifndef host-rm
$(error host-rm not defined)
endif
