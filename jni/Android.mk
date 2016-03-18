LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := fontconfig

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/libexpat/include \
    $(LOCAL_PATH)/src \
    $(LOCAL_PATH)/freetype/include \

LOCAL_SRC_FILES := \
		src/fcarch.c \
		src/fcatomic.c \
		src/fcblanks.c \
		src/fccache.c \
		src/fccfg.c \
		src/fccharset.c \
		src/fccompat.c \
		src/fcdbg.c \
		src/fcdefault.c \
		src/fcdir.c \
		src/fcformat.c \
		src/fcfreetype.c \
		src/fcfs.c \
		src/fcinit.c \
		src/fclang.c \
		src/fclist.c \
		src/fcmatch.c \
		src/fcmatrix.c \
		src/fcname.c \
		src/fcobjs.c \
		src/fcpat.c \
		src/fcrange.c \
		src/fcserialize.c \
		src/fcstat.c \
		src/fcstr.c \
		src/fcweight.c \
		src/fcxml.c \
		src/ftglue.c 
		
LOCAL_CFLAGS := -DHAVE_CONFIG_H
LOCAL_CFLAGS += -DFONTCONFIG_PATH=\"/sdcard/.fcconfig\"
LOCAL_CFLAGS += -DFC_CACHEDIR=\"/sdcard/.fccache\"
LOCAL_CFLAGS += -DFC_DEFAULT_FONTS=\"/system/fonts\"


LOCAL_SHARED_LIBRARIES := freetype expat

include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/freetype/Android.mk
include $(LOCAL_PATH)/../libexpat/Android.mk