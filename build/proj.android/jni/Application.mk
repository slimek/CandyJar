APP_PLATFORM := android-17
APP_ABI := x86 armeabi armeabi-v7a
APP_STL := gnustl_static
APP_OPTIM := debug
 
APP_CFLAGS += -fexceptions -DCOCOS2D_DEBUG=2
APP_CPPFLAGS += -std=c++11 -frtti -fexceptions -DCOCOS2D_DEBUG=2
 
NDK_TOOLCHAIN_VERSION := 4.8
