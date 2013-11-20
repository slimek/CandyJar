APP_PLATFORM := android-10
APP_ABI := x86 armeabi armeabi-v7a
APP_STL := gnustl_static
APP_OPTIM := debug
 
APP_CFLAGS += -fexceptions
APP_CPPFLAGS += -std=c++11 -frtti -fexceptions
 
NDK_TOOLCHAIN_VERSION := 4.8
