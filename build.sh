#!/bin/bash
NDK_ROOT=/Users/yu/Library/Android/android-ndk-r17c

CPU=arm-linux-androideabi

TOOLCHAIN=$NDK_ROOT/toolchains/$CPU-4.9/prebuilt/darwin-x86_64

export XCFLAGS="-isysroot $NDK_ROOT/sysroot -isystem $NDK_ROOT/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=17"
export XLDFLAGS="--sysroot=${NDK_ROOT}/platforms/android-17/arch-arm "
export CROSS_COMPILE=$TOOLCHAIN/bin/arm-linux-androideabi-

make install SYS=android prefix=`pwd`/result CRYPTO= SHARED=  XDEF=-DNO_SSL