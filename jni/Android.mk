LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := coffeecatch_static
LOCAL_SRC_FILES += ../coffeecatch.c ../coffeejni.c
LOCAL_CFLAGS := -funwind-tables -Wl,--no-merge-exidx-entries

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := coffeecatch
LOCAL_STATIC_LIBRARIES := coffeecatch_static
LOCAL_CFLAGS := -funwind-tables -Wl,--no-merge-exidx-entries

include $(BUILD_SHARED_LIBRARY)
