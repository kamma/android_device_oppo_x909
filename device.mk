#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# This file includes all definitions that apply to ALL x909 devices, and
# are also specific to x909 devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/oppo/x909/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PACKAGES := \
	lights.msm8960

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Vold and Storage
PRODUCT_COPY_FILES += \
        device/oppo/x909/configs/vold.fstab:system/etc/vold.fstab

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni \
	DataWidget \
	Stk \
	Email

LOCAL_KERNEL := device/oppo/x909/zImage

PRODUCT_COPY_FILES += \
        $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	device/oppo/x909/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
        device/oppo/x909/wlan/wlan.ko:system/lib/modules/wlan.ko

PRODUCT_COPY_FILES += \
	device/oppo/x909/configs/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/oppo/x909/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
	device/oppo/x909/configs/thermald-x909.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
	device/oppo/x909/configs/init.x909.rc:root/init.x909.rc \
	device/oppo/x909/configs/init.x909.usb.rc:root/init.x909.usb.rc \
	device/oppo/x909/configs/init.recovery.x909.rc:root/init.recovery.x909.rc \
	device/oppo/x909/configs/fstab.x909:root/fstab.x909 \
	device/oppo/x909/configs/ueventd.x909.rc:root/ueventd.x909.rc \
	device/oppo/x909/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/oppo/x909/configs/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
	device/oppo/x909/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/oppo/x909/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
	device/oppo/x909/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	device/oppo/x909/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/oppo/x909/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	device/oppo/x909/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	device/oppo/x909/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	device/oppo/x909/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	device/oppo/x909/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	device/oppo/x909/synaptics-rmi-ts.kl:system/usr/keylayout/synaptics-rmi-ts.kl \
	device/oppo/x909/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	device/oppo/x909/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	device/oppo/x909/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	device/oppo/x909/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
	device/oppo/x909/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# GPS configuration
PRODUCT_COPY_FILES += \
	device/oppo/x909/configs/gps.conf:system/etc/gps.conf

# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFC feature files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/oppo/x909/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/oppo/x909/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=480

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.handset.mic=dmic \
	persist.audio.fluence.mode=endfire \
	persist.audio.lowlatency.rec=false \
	af.resampler.quality=4

# Debugging
PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	service.adb.enable=1 \
	sys.usb.config=adb \
	ro.debuggable=1 \
	persist.service.adb.enable=1

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable=true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
        lights.x909 \
	camera-wrapper.msm8960

PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

PRODUCT_PACKAGES += \
	hci_qcomm_init

PRODUCT_COPY_FILES += \
	device/oppo/x909/configs/init.x909.bt.sh:system/etc/init.x909.bt.sh

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

PRODUCT_PACKAGES += \
	bdAddrLoader \
	libwfcu \
	conn_init

PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
        debug.egl.recordable.rgba8888=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sensors.wl_dis=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb \
	ro.adb.secure=0 \
	ro.secure=1 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
        rild.libpath=/system/lib/libril-qc-qmi-1.so


$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)