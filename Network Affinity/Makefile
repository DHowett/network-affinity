GO_EASY_ON_ME=1
ARCHS=armv7
include theos/makefiles/common.mk
APPLICATION_NAME=NetworkAffinity
NetworkAffinity_FILES=$(wildcard *.m*)
NetworkAffinity_FRAMEWORKS=CoreGraphics UIKit CoreTelephony
NetworkAffinity_PRIVATE_FRAMEWORKS=Preferences
NetworkAffinity_CFLAGS=-include "$(wildcard *.pch)"
include theos/makefiles/application.mk
