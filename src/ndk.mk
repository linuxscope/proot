ANDROID_NDK_HOME = $(NDK)
ANDROID_NDK_ROOT = $(NDK)

TARGET := aarch64-linux-android

TOOLCHAIN := $(firstword $(wildcard $(ANDROID_NDK_HOME)/toolchains/llvm/prebuilt/*))

CC = $(TOOLCHAIN)/bin/$(TARGET)$(API)-clang
CXX = $(CC)++
CPP = $(CC)

NDK_LLVM_PREFIX = $(TOOLCHAIN)/bin/llvm-

AR = $(NDK_LLVM_PREFIX)ar
AS = $(NDK_LLVM_PREFIX)as
LD = $(CC)
RANLIB = $(NDK_LLVM_PREFIX)ranlib
STRIP = $(NDK_LLVM_PREFIX)strip
OBJCOPY = $(NDK_LLVM_PREFIX)objcopy
OBJDUMP = $(NDK_LLVM_PREFIX)objdump
READELF = $(NDK_LLVM_PREFIX)readelf
NM = $(NDK_LLVM_PREFIX)nm

CFLAGS += -DNDEBUG
CXXFLAGS += -DNDEBUG
