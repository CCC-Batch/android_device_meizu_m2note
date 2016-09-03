#
# Copyright (C) 2016 The M571-CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/meizu/m2note/m2note-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/meizu/m2note/overlay

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := m2note,m2n,meizu6753_65c_l1,M2Note,M571C,M571M,M571U,M571H,m571C,m571M,m571U,m571H 

# init.rc's
PRODUCT_COPY_FILES += \
	device/meizu/m2note/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/meizu/m2note/rootdir/init.ssd.rc:root/init.ssd.rc \
	device/meizu/m2note/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/meizu/m2note/rootdir/init.rc:root/init.rc \
	device/meizu/m2note/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/meizu/m2note/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/meizu/m2note/rootdir/init.project.rc:root/init.project.rc \
	device/meizu/m2note/rootdir/init.modem.rc:root/init.modem.rc \
	device/meizu/m2note/recovery/root/fstab.mt6753:root/fstab.mt6735  \
	device/meizu/m2note/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/meizu/m2note/rootdir/factory_init.rc:root/factory_init.rc \
	device/meizu/m2note/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	device/meizu/m2note/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/meizu/m2note/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/meizu/m2note/rootdir/meta_init.rc:root/meta_init.rc 

# hardware specifics
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/permissions/media_codecs.xml \
    	$(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    	$(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	$(LOCAL_PATH)/configs/platform.xml:system/etc/permissions/platform.xml
    
# CM's Snap camera
PRODUCT_PACKAGES += \
	Snap


# Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor

# Wifi
PRODUCT_PACKAGES += \
    	libwpa_client \
    	hostapd \
    	dhcpcd.conf \
    	wpa_supplicant \
    	wpa_supplicant.conf

# Audio
PRODUCT_PACKAGES += \
    	audio.a2dp.default \
    	audio_policy.default \
    	audio_policy.stub \
    	audio.r_submix.default \
    	audio.usb.default \
    	libaudio-resampler \
    	tinymix \
    	libtinyalsa \
    	libtinycompress

# Audio profiles used to address the correct audio devices for headset, etc.
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    	$(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml \
    	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    	$(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf

# Charger
PRODUCT_PACKAGES += \
      	charger_res_images

# Live Display
PRODUCT_PACKAGES += \
	libjni_livedisplay

# Telecom
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml \
    	$(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    	$(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml 

# Torch
PRODUCT_PACKAGES += \
    	Torch

# Immvibe
PRODUCT_PACKAGES += \
	immvibe

# MTK's XLog
PRODUCT_PACKAGES += \
	libxlog

PRODUCT_PACKAGES += \
    	libifaddrs

PRODUCT_PACKAGES += \
    	librs_jni \
    	com.android.future.usb.accessory

 PRODUCT_PACKAGES += \
    	libnl_2 \
    	libtinyxml

# STk
PRODUCT_PACKAGES += \
    	Stk

# GPS
PRODUCT_COPY_FILES += \
     	$(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml 

# Media	
PRODUCT_COPY_FILES += \
    	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml


PRODUCT_COPY_FILES += \
    	device/meizu/m2note/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
     dalvik.vm.boot-dex2oat-threads=4 \
     dalvik.vm.dex2oat-threads=2 \
     dalvik.vm.image-dex2oat-threads=4

$(call inherit-product, build/target/product/full.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.adb.secure=1 \
    persist.service.acm.enable=0 \
    ro.oem_unlock_supported=1 \
    persist.sys.usb.config=mtp
    
# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.isa.arm64.features=default \
    dalvik.vm.isa.arm.features=default \
    dalvik.vm.dexopt-flags=m=y
    
# MTK Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.version.branch=L1.MP3.EE.WFC.DEV \
    ro.mediatek.version.sdk=4 \
    ro.mtk_gemini_support=1 \
    ro.mtk_audenh_support=1 \
    ro.mtk_lossless_bt_audio=1 \
    ro.mtk_besloudness_support=1 \
    ro.mtk_bessurround_support=1 \
    ro.mtk_gemini_enhancement=1 \
    ro.mtk_wapi_support=1 \
    ro.mtk_bt_support=1 \
    ro.mtk_wappush_support=1 \
    ro.mtk_agps_app=1 \
    ro.mtk_wlan_support=1 \
    ro.mtk_gps_support=1 \
    ro.mtk_omacp_support=1 \
    ro.mtk_search_db_support=1 \
    ro.mtk_dialer_search_support=1 \
    ro.mtk_dhcpv6c_wifi=1 \
    ro.have_aacencode_feature=1 \
    ro.mtk_fd_support=1 \
    ro.mtk_oma_drm_support=1 \
    ro.mtk_cta_drm_support=1 \
    ro.mtk_widevine_drm_l3_support=1 \
    ro.mtk_eap_sim_aka=1 \
    ro.mtk_audio_ape_support=1 \
    ro.mtk_flv_playback_support=1 \
    ro.mtk_wmv_playback_support=1 \
    ro.mtk_send_rr_support=1 \
    ro.mtk_emmc_support=1 \
    ro.mtk_tetheringipv6_support=1 \
    ro.mtk_phone_number_geo=1 \
    ro.mtk_shared_sdcard=1 \
    ro.mtk_enable_md1=1 \
    ro.mtk_pq_support=2 \
    ro.mtk_miravision_support=1 \
    ro.mtk_miravision_image_dc=1 \
    ro.mtk_wfd_support=1 \
    ro.mtk_system_update_support=1 \
    ro.mtk_sim_hot_swap=1 \
    ro.mtk_thumbnail_play_support=1 \
    ro.mtk_bip_scws=1 \
    ro.mtk_cmcc_ft_precheck_support=1 \
    ro.mtk_world_phone=1 \
    ro.mtk_world_phone_policy=0 \
    ro.mtk_perfservice_support=1 \
    ro.mtk_sim_hot_swap_common_slot=1 \
    ro.mtk_cta_set=1 \
    ro.mtk_mobile_management=1 \
    ro.mtk_antibricking_level=2 \
    ro.mtk_cam_mfb_support=3 \
    ro.mtk_slow_motion_support=1 \
    ro.mtk_lte_support=1 \
    ro.mtk_cam_mav_support=1 \
    ro.sim_refresh_reset_by_modem=1 \
    ro.mtk_external_sim_support=1 \
    ro.mtk_live_photo_support=1 \
    ro.mtk_motion_track_support=1 \
    ro.mtk_bg_power_saving_support=1 \
    ro.mtk_bg_power_saving_ui=1 
