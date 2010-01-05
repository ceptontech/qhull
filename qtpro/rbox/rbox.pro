# -------------------------------------------------
# rbox.pro -- Qt project for rbox.exe
# -------------------------------------------------
TARGET = rbox
DESTDIR = ../..
TEMPLATE = app
CONFIG += console warn_on
LIBS += -L../..
QMAKE_CFLAGS += -Wall -Wextra -Wshadow -Wcast-qual -Wwrite-strings
QMAKE_CFLAGS += -Wno-sign-conversion # Many size_t vs. int errors
build_pass:CONFIG(debug, debug|release):{
   LIBS += libqhulld
   OBJECTS_DIR = ../../tmp/rbox/Debug
}else:build_pass:CONFIG(release, debug|release):{
   LIBS += libqhull
   OBJECTS_DIR = ../../tmp/rbox/Release
}
QT -= gui
CONFIG -= app_bundle
MOC_DIR = ../../tmp/moc
RCC_DIR = ../../tmp/rcc
INCLUDEPATH = ../../cpp;../../cpp/road;../../tmp
VPATH = ../..
SOURCES += src/rbox.c
HEADERS += src/libqhull.h