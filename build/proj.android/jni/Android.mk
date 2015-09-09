#
# Store the local path
# - Otherwise it would be overwriten by other Android.mk files.
#

CANDY_LOCAL_PATH := $(call my-dir)


#
# Build each libraries
#

# $(call candy-make,lib-dir)
define candy-make
../../$1/proj.android/jni/Android.mk
endef

include $(call candy-make,Boost.Chrono)
include $(call candy-make,Boost.DateTime)
include $(call candy-make,Boost.Filesystem)
include $(call candy-make,Boost.ProgramOptions)
include $(call candy-make,Boost.System)
include $(call candy-make,JsonCpp)
include $(call candy-make,UnitTest++)


#
# Build a dummy local module
# - Use this to launch the copy commands.
#

LOCAL_PATH := $(CANDY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := CandyJar

LOCAL_WHOLE_STATIC_LIBRARIES := \
	boost-chrono \
	boost-date_time \
	boost-filesystem \
	boost-program_options \
	boost-system \
	JsonCpp \
	UnitTest++

include $(BUILD_SHARED_LIBRARY)


#
# Make output directories, then copy all built libraries
#

# My variables
CANDY_LIB := ../../lib
CANDY_ARCH_ABI := $(TARGET_ARCH_ABI)
NDK_CANDY_CONFIG := Android.Ndk.$(CANDY_CONFIG)

# $(call candy-copy,lib-name)
define candy-copy
  $(call host-cp,obj/$(CANDY_CONFIG)/local/$@/lib$1.a,$(CANDY_LIB)/$(NDK_CANDY_CONFIG)/$@/lib$1.a)
endef

all: $(CANDY_ARCH_ABI)

$(CANDY_ARCH_ABI): $(LOCAL_BUILT_MODULE)
	$(call host-mkdir,$(CANDY_LIB)/$(NDK_CANDY_CONFIG)/$@)
	$(call candy-copy,boost-chrono)
	$(call candy-copy,boost-date_time)
	$(call candy-copy,boost-filesystem)
	$(call candy-copy,boost-program_options)
	$(call candy-copy,boost-system)
	$(call candy-copy,JsonCpp)
	$(call candy-copy,UnitTest++)


#
# Clean the output directories
#

# $(call candy-clean,lib-name)
define candy-clean
  $(call host-rm,$(CANDY_LIB)/$(NDK_CANDY_CONFIG)/$(subst -clean,,$@)/lib$1.a)
endef

clean: $(CANDY_ARCH_ABI)-clean

$(CANDY_ARCH_ABI)-clean:
	$(call candy-clean,boost-chrono)
	$(call candy-clean,boost-date_time)
	$(call candy-clean,boost-filesystem)
	$(call candy-clean,boost-program_options)
	$(call candy-clean,boost-system)
	$(call candy-clean,JsonCpp)
	$(call candy-clean,UnitTest++)


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
