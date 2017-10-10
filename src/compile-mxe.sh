#!/bin/bash
MXE_PATH=/opt/mxe


TARGET_OS=OS_WINDOWS_CROSSCOMPILE \
OPT="-mthreads" \
CXX=$MXE_PATH/usr/bin/i686-w64-mingw32.static-gcc \
CC=$MXE_PATH/usr/bin/i686-w64-mingw32.static-gcc \
AR=$MXE_PATH/usr/bin/i686-w64-mingw32.static-ar \
CXXFLAGS="-DSTATICLIB -I$MXE_PATH/usr/i686-w64-mingw32.static/include" \
CFLAGS="-DSTATICLIB -I$MXE_PATH/usr/i686-w64-mingw32.static/include" \
LDFLAGS="-L$MXE_PATH/usr/i686-w64-mingw32.static/lib" \
 make -f makefile.mxe -j4


