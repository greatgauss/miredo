LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
	compat/clock_gettime.c \
	compat/tsearch.c \
	compat/closefrom.c \
	compat/dummy.c \
	compat/clock_nanosleep.c \
	compat/clearenv.c \
	compat/fdatasync.c \
	compat/strlcpy.c \
	libteredo/maintain.c \
	libteredo/v4global.c \
	libteredo/teredo.c \
	libteredo/peerlist.c \
	libteredo/security.c \
	libteredo/clock.c \
	libteredo/relay.c \
	libteredo/stub.c \
	libteredo/init.c \
	libteredo/md5.c \
	libteredo/packets.c \
	libtun6/diag.c \
	libtun6/tun6.c \
	src/binreloc.c \
	src/conf.c 

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-DLOCALEDIR="\"/system/miredo\"" \
	-DSYSCONFDIR="\"/system/miredo\"" \
	-DLOCALSTATEDIR="\"/system/miredo\"" \
	-DPKGLIBDIR="\"/system/lib\"" \
	-DPACKAGE_NAME="\"miredo\"" \
	-DPACKAGE_VERSION="\"1.2.4\""

LOCAL_LDLIBS += -lpthread

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH) \
		$(LOCAL_PATH)/include \
		$(LOCAL_PATH)/libteredo \
		$(LOCAL_PATH)/src \
		$(LOCAL_PATH)/libtun6
 
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libmiredo
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
                src/main.c \
                src/relayd.c \
                src/miredo.c

LOCAL_C_INCLUDES := \
                $(LOCAL_PATH) \
                $(LOCAL_PATH)/include \
                $(LOCAL_PATH)/libteredo \
                $(LOCAL_PATH)/src \
                $(LOCAL_PATH)/libtun6

LOCAL_CFLAGS := \
        -DHAVE_CONFIG_H \
        -DLOCALEDIR="\"/system/miredo\"" \
        -DSYSCONFDIR="\"/system/miredo\"" \
        -DLOCALSTATEDIR="\"/system/miredo\"" \
        -DPKGLIBDIR="\"/system/lib\"" \
        -DPACKAGE_NAME="\"miredo\"" \
        -DPACKAGE_VERSION="\"1.2.4\""

LOCAL_SHARED_LIBRARIES := \
                        libcutils \
                        libmiredo 

LOCAL_MODULE = miredo 
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
                src/privproc.c

LOCAL_C_INCLUDES := \
                $(LOCAL_PATH) \
                $(LOCAL_PATH)/include \
                $(LOCAL_PATH)/libteredo \
                $(LOCAL_PATH)/src \
                $(LOCAL_PATH)/libtun6

LOCAL_CFLAGS := \
        -DHAVE_CONFIG_H \
        -DLOCALEDIR="\"/system/miredo\"" \
        -DSYSCONFDIR="\"/system/miredo\"" \
        -DLOCALSTATEDIR="\"/system/miredo\"" \
        -DPKGLIBDIR="\"/system/lib\"" \
        -DPACKAGE_NAME="\"miredo\"" \
        -DPACKAGE_VERSION="\"1.2.4\""

LOCAL_SHARED_LIBRARIES := \
                        libmiredo 

LOCAL_MODULE = miredo-privproc 
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)


