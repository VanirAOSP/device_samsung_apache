# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi

# Boot and charging images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ARIESVE.rle:root/ARIESVE.rle \
    $(LOCAL_PATH)/lpm/charging.rle:root/charging.rle

# Support files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Feature live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/config/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/config/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/config/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/config/nvram_net.txt:system/vendor/firmware/nvram_net.txt \
    $(LOCAL_PATH)/recovery/fix_reboot.sh:recovery/root/sbin/fix_reboot.sh \
    $(LOCAL_PATH)/recovery/fix_brightness.sh:recovery/root/sbin/fix_brightness.sh \
    $(LOCAL_PATH)/prebuilt/Torch.apk:system/app/Torch.apk \
    $(LOCAL_PATH)/prebuilt/get_macaddrs:system/bin/get_macaddrs

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/Broadcom_Bluetooth_HID.kcm.bin:system/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin \
    $(LOCAL_PATH)/keyfiles/apache_keypad_numeric.kcm.bin:system/usr/keychars/apache_keypad_numeric.kcm.bin \
    $(LOCAL_PATH)/keyfiles/apache_keypad_qwerty.kcm.bin:system/usr/keychars/apache_keypad_qwerty.kcm.bin \
    $(LOCAL_PATH)/keyfiles/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keyfiles/sec_key.kl:system/usr/keylayout/sec_key.kl \
    $(LOCAL_PATH)/keyfiles/sec_power_key.kl:system/usr/keylayout/sec_power_key.kl \
    $(LOCAL_PATH)/keyfiles/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bthid.ko:root/lib/modules/bthid.ko \
    $(LOCAL_PATH)/prebuilt/cifs.ko:root/lib/modules/cifs.ko \
    $(LOCAL_PATH)/prebuilt/dhd.ko:root/lib/modules/dhd.ko \
	$(LOCAL_PATH)/prebuilt/scsi_wait_scan.ko:root/lib/modules/scsi_wait_scan.ko

# LPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lpm/bin/charging_mode:system/bin/charging_mode \
    $(LOCAL_PATH)/lpm/bin/playlpm:system/bin/playlpm \
    $(LOCAL_PATH)/lpm/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \
    $(LOCAL_PATH)/lpm/media/Disconnected.qmg:system/media/Disconnected.qmg \
    $(LOCAL_PATH)/lpm/media/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \
    $(LOCAL_PATH)/lpm/media/battery_error.qmg:system/media/battery_error.qmg \
    $(LOCAL_PATH)/lpm/media/chargingwarning.qmg:system/media/chargingwarning.qmg

PRODUCT_PACKAGES += \
    camera.msm7x30 \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    gps.msm7x30 \
    lights.msm7x30 \
    power.msm7x30 \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioparameter

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw \
    libc2dcolorconvert

PRODUCT_PACKAGES += \
    badblocks \
    e2fsck \
    mke2fs \
    mke2fs.conf \
    resize2fs \
    tune2fs \
    make_ext4fs \
    setup_fs

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1
	ro.adb.secure=0

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#    LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
#else
#    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/samsung/apache/device-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
