#!/bin/bash
MXE_INCLUDE_PATH=/opt/mxe/usr/i686-w64-mingw32.static/include
MXE_LIB_PATH=/opt/mxe/usr/i686-w64-mingw32.static/lib


MXE_PATH=/opt/mxe

CC=$MXE_PATH/usr/bin/i686-w64-mingw32.static-gcc \
CXX=$MXE_PATH/usr/bin/i686-w64-mingw32.static-g++\
AR=$MXE_PATH/usr/bin/i686-w64-mingw32.static-ar \
PATH=$PATH:$MXE_PATH/usr/bin
TARGET_OS=OS_WINDOWS_CROSSCOMPILE \
/opt/mxe/usr/i686-w64-mingw32.static/qt5/bin/qmake \
	BOOST_LIB_SUFFIX=-mt \
	BOOST_THREAD_LIB_SUFFIX=_win32-mt \
	BOOST_INCLUDE_PATH=$MXE_INCLUDE_PATH/boost \
	BOOST_LIB_PATH=$MXE_LIB_PATH \
	OPENSSL_INCLUDE_PATH=$MXE_INCLUDE_PATH/openssl \
	OPENSSL_LIB_PATH=$MXE_LIB_PATH \
	BDB_INCLUDE_PATH=$MXE_INCLUDE_PATH \
	BDB_LIB_PATH=$MXE_LIB_PATH \
	MINIUPNPC_INCLUDE_PATH=$MXE_INCLUDE_PATH \
	MINIUPNPC_LIB_PATH=$MXE_LIB_PATH \
	QMAKE_LRELEASE=/opt/mxe/usr/i686-w64-mingw32.static/qt5/bin/lrelease shell.pro

make -f Makefile.Release
