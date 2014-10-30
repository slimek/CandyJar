APP_PLATFORM := android-15
APP_ABI := x86 armeabi armeabi-v7a

APP_STL := c++_static
NDK_TOOLCHAIN_VERSION := clang

APP_CFLAGS := -fexceptions -D__STDC_LIMIT_MACROS
APP_CPPFLAGS := -std=c++11 -frtti -fsigned-char -Wno-extern-c-compat
APP_LDFLAGS := -latomic

ifeq ($(NDEBUG),1)

# Release
APP_OPTIM := release
CANDY_CONFIG := Release

else

# Debug
APP_OPTIM := debug
CANDY_CONFIG := Debug

APP_CFLAGS += -g -DCOCOS2D_DEBUG=1

endif

NDK_APP_OUT := obj/$(CANDY_CONFIG)
