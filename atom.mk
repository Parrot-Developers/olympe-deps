LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := olympe-deps
LOCAL_CATEGORY_PATH := libs
LOCAL_DESCRIPTION := Python ctypes bindings for olympe dependencies (libpdraw, ....)

LOCAL_EXPAND_CUSTOM_VARIABLES := 1

LOCAL_CUSTOM_MACROS := \
	pybinding-macro:olympe_deps,$\
	libpomp:libpdraw:libvideo-buffers:libvideo-buffers-generic:$\
	libarsdk:libarsdkctrl,$\
	LIBPOMP_HEADERS:$\
	LIBPDRAW_HEADERS:$\
	LIBVIDEOBUFFERS_HEADERS:$\
	LIBVIDEOBUFFERSGENERIC_HEADERS:$\
	LIBARSDK_HEADERS:$\
	LIBARSDKCTRL_HEADERS,$\
	$(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libpomp$(TARGET_SHARED_LIB_SUFFIX):$\
	$(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libpdraw$(TARGET_SHARED_LIB_SUFFIX):$\
        $(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libvideo-buffers$(TARGET_SHARED_LIB_SUFFIX):$\
	$(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libvideo-buffers-generic$(TARGET_SHARED_LIB_SUFFIX):$\
	$(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libarsdk$(TARGET_SHARED_LIB_SUFFIX):$\
	$(TARGET_OUT_STAGING)$(shell echo $${TARGET_DEPLOY_ROOT:-/usr})/lib/libarsdkctrl$(TARGET_SHARED_LIB_SUFFIX)

include $(BUILD_CUSTOM)
