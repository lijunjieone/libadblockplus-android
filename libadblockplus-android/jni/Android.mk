LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libadblockplus
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libadblockplus.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := v8-libsampler
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libv8_libsampler.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := v8-base
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libv8_base.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := v8-libbase
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libv8_libbase.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := v8-libplatform
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libv8_libplatform.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := v8-snapshot
LOCAL_SRC_FILES := ./libadblockplus-binaries/android_$(TARGET_ARCH_ABI)/libv8_snapshot.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libadblockplus-jni
LOCAL_SRC_FILES := JniLibrary.cpp
LOCAL_SRC_FILES += JniPlatform.cpp
LOCAL_SRC_FILES += JniJsEngine.cpp JniFilterEngine.cpp JniJsValue.cpp
LOCAL_SRC_FILES += JniFilter.cpp JniSubscription.cpp JniEventCallback.cpp
LOCAL_SRC_FILES += JniLogSystem.cpp JniWebRequest.cpp
LOCAL_SRC_FILES += JniUpdateAvailableCallback.cpp JniUpdateCheckDoneCallback.cpp
LOCAL_SRC_FILES += JniFilterChangeCallback.cpp JniCallbacks.cpp Utils.cpp
LOCAL_SRC_FILES += JniNotification.cpp JniShowNotificationCallback.cpp
LOCAL_SRC_FILES += JniIsAllowedConnectionTypeCallback.cpp

LOCAL_CPP_FEATURES := exceptions 
LOCAL_CPPFLAGS += -std=c++11

LOCAL_C_INCLUDES := jni/libadblockplus-binaries/include/
LOCAL_STATIC_LIBRARIES := libadblockplus v8-base v8-snapshot v8-libsampler v8-libplatform v8-libbase

include $(BUILD_SHARED_LIBRARY)
