APP_PLATFORM := android-15
APP_ABI := x86 armeabi

APP_STL := c++_static
NDK_TOOLCHAIN_VERSION := clang

APP_CFLAGS := -fexceptions -D__STDC_LIMIT_MACROS
APP_CPPFLAGS := -std=c++11 -frtti -fsigned-char -Wno-extern-c-compat
APP_LDFLAGS := -latomic

ifeq ($(NDEBUG),1)

# Release
APP_OPTIM := release
CANDY_CONFIG := clang.Release

else

# Debug
APP_OPTIM := debug
CANDY_CONFIG := clang.Debug

APP_CFLAGS += -g

endif

NDK_APP_OUT := obj/$(CANDY_CONFIG)
