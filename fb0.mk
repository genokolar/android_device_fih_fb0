$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/fih/fb0/fb0-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fih/fb0/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/fih/fb0/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Gallery3d \
    SpareParts \
    Term \
    gps.fb0 \
    lights.fb0 \
    gralloc.msm7x30 \
    overlay.default \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    librs_jni 

# Init files
PRODUCT_COPY_FILES += \
    device/fih/fb0/init.qcom.rc:root/init.qcom.rc \
    device/fih/fb0/ueventd.fb0.rc:root/ueventd.fb0.rc

# init.d task management
PRODUCT_COPY_FILES += \
    device/fih/fb0/prebuilt/etc/99memory:/system/etc/init.d/99memory \
    device/fih/fb0/prebuilt/etc/08hostapd:/system/etc/init.d/08hostapd

# Gsensor & Ecompass
PRODUCT_COPY_FILES += \
    device/fih/fb0/prebuilt/app/ECompassCalibration.apk:/system/app/ECompassCalibration.apk \
    device/fih/fb0/prebuilt/app/GSensorCalibration.apk:/system/app/GSensorCalibration.apk

# vold
PRODUCT_COPY_FILES += \
    device/fih/fb0/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# init scripts
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/fih/fb0/files/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/fih/fb0/files/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/fih/fb0/files/etc/init.qcom.sdio.sf6.sh:/system/etc/init.qcom.sdio.sf6.sh \
    device/fih/fb0/files/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/fih/fb0/files/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/fih/fb0/files/etc/gps.conf:/system/etc/gps.conf

# Keychars
#PRODUCT_COPY_FILES += \
#    device/motorola/triumph/keychars/fih_headsethook.kcm.bin:system/usr/keychars/fih_headsethook.kcm.bin \
#    device/motorola/triumph/keychars/fih_ringswitch.kcm.bin:system/usr/keychars/fih_ringswitch.kcm.bin \
#    device/motorola/triumph/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
#    device/motorola/triumph/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
#    device/motorola/triumph/keychars/sf6_kybd.kcm.bin:system/usr/keychars/sf6_kybd.kcm.bin \
#    device/motorola/triumph/keychars/sf8_kybd.kcm.bin:system/usr/keychars/sf8_kybd.kcm.bin \
#    device/motorola/triumph/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
#    device/motorola/triumph/keychars/surf_keypad_qwerty.kcm.bin:system/usr/keychars/surf_keypad_qwerty.kcm.bin \
#    device/motorola/triumph/keychars/surf_keypad_numeric.kcm.bin:system/usr/keychars/surf_keypad_numeric.kcm.bin
#

# Keylayouts
PRODUCT_COPY_FILES += \
    device/fih/fb0/keylayout/fih_headsethook.kl:system/usr/keylayout/fih_headsethook.kl \
    device/fih/fb0/keylayout/fih_ringswitch.kl:system/usr/keylayout/fih_ringswitch.kl \
    device/fih/fb0/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/fih/fb0/keylayout/fbx_kybd.kl:system/usr/keylayout/fbx_kybd.kl \
    device/fih/fb0/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/fih/fb0/keylayout/sf6_kybd.kl:system/usr/keylayout/sf6_kybd.kl \
    device/fih/fb0/keylayout/sf8_kybd.kl:system/usr/keylayout/sf8_kybd.kl \
    device/fih/fb0/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/fih/fb0/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/fih/fb0/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/fih/fb0/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Video firmware
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/fih/fb0/files/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/fih/fb0/files/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/fih/fb0/files/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Wifi and filesystems
PRODUCT_COPY_FILES += \
    device/fih/fb0/modules/libra.ko:/system/lib/modules/libra.ko \
    device/fih/fb0/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/fih/fb0/modules/libra_ftm.ko:/system/lib/modules/libra_ftm.ko \
    device/fih/fb0/modules/cifs.ko:/system/lib/modules/cifs.ko \
    device/fih/fb0/files/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/fih/fb0/files/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/fih/fb0/files/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/fih/fb0/files/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/fih/fb0/files/etc/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/fih/fb0/files/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/fih/fb0/files/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/fih/fb0/prebuilt/lib/libaudioalsa.so:/obj/lib/libaudioalsa.so \
    device/fih/fb0/prebuilt/lib/libaudioalsa.so:/system/lib/libaudioalsa.so 
    
# Tunnelling
PRODUCT_COPY_FILES += \
    device/fih/fb0/modules/tun.ko:/system/lib/modules/tun.ko 

# HW init
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/bin/qmuxd:/system/bin/qmuxd \
    device/fih/fb0/files/bin/hci_qcomm_init:/system/bin/hci_qcomm_init

# Sensors binaries
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/bin/geomagneticd:/system/bin/geomagneticd \
    device/fih/fb0/files/bin/orientationd:/system/bin/orientationd \
    device/fih/fb0/files/bin/proximityd:/system/bin/proximityd \
    device/fih/fb0/files/bin/lightd:/system/bin/lightd 
    
# other binaries
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/bin/hostapd:/system/bin/hostapd \
    device/fih/fb0/files/bin/nt_password_hash:/system/bin/nt_password_hash \
    device/fih/fb0/files/bin/hlr_auc_gw:/system/bin/hlr_auc_gw \
    device/fih/fb0/files/bin/hostapd_cli:/system/bin/hostapd_cli \
    device/fih/fb0/files/bin/hciattach:/system/bin/hciattach \
    device/fih/fb0/files/bin/netmgrd:/system/bin/netmgrd \
    device/fih/fb0/files/bin/rmt_storage:/system/bin/rmt_storage \
    device/fih/fb0/files/bin/port-bridge:/system/bin/port-bridge \
    device/fih/fb0/files/bin/wpdiagd:/system/bin/wpdiagd \
    device/fih/fb0/files/bin/btwlancoex:/system/bin/btwlancoex \
    device/fih/fb0/files/bin/hdmid:/system/bin/hdmid \
    device/fih/fb0/files/lib/libgemini.so:/system/lib/libgemini.so

# egl
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/fih/fb0/files/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/fih/fb0/files/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/fih/fb0/files/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/fih/fb0/files/lib/libgsl.so:/system/lib/libgsl.so


# Sensors
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/lib/hw/sensors.qcom.so:/system/lib/hw/sensors.qcom.so

# GPS
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/lib/libcommondefs.so:/obj/lib/libcommondefs.so \
    device/fih/fb0/files/lib/libcommondefs.so:/system/lib/libcommondefs.so

# RIL
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/bin/rild:/system/bin/rild \
    device/fih/fb0/files/lib/libril.so:/system/lib/libril.so \
    device/fih/fb0/files/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/fih/fb0/files/lib/libreference-ril.so:/system/lib/libreference-ril.so \
    device/fih/fb0/files/lib/libreference-ril.so:/system/lib/libreference-cdma-sms.so \
    device/fih/fb0/files/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/fih/fb0/files/lib/libdiag.so:/system/lib/libdiag.so \
    device/fih/fb0/files/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/fih/fb0/files/lib/libqmi.so:/system/lib/libqmi.so \
    device/fih/fb0/files/lib/libdsm.so:/system/lib/libdsm.so \
    device/fih/fb0/files/lib/libqueue.so:/system/lib/libqueue.so \
    device/fih/fb0/files/lib/libdll.so:/system/lib/libdll.so \
    device/fih/fb0/files/lib/libcm.so:/system/lib/libcm.so \
    device/fih/fb0/files/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/fih/fb0/files/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/fih/fb0/files/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/fih/fb0/files/lib/libwms.so:/system/lib/libwms.so \
    device/fih/fb0/files/lib/libnv.so:/system/lib/libnv.so \
    device/fih/fb0/files/lib/libwmsts.so:/system/lib/libwmsts.so \
    device/fih/fb0/files/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/fih/fb0/files/lib/libauth.so:/system/lib/libauth.so \
    device/fih/fb0/files/lib/libqdp.so:/system/lib/libqdp.so \
    device/fih/fb0/files/lib/libidl.so:/system/lib/libidl.so \
    device/fih/fb0/files/lib/libdsutils.so:/system/lib/libdsutils.so \
    device/fih/fb0/files/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \
    device/fih/fb0/files/lib/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/fih/fb0/files/lib/libnetmgr.so:/system/lib/libnetmgr.so 
    
# GPS
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/etc/loc_parameter.ini:system/etc/loc_parameter.ini

# Camera
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/lib/libcamera.so:/system/lib/libcamera.so \
    device/fih/fb0/files/lib/libcamera.so:/obj/lib/libcamera.so \
    device/fih/fb0/files/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/fih/fb0/files/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/fih/fb0/files/lib/libmmipl.so:/system/lib/libmmipl.so

# xml config
PRODUCT_COPY_FILES += \
    device/fih/fb0/files/etc/media_profiles.xml:system/etc/media_profiles.xml

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=32m \
    persist.sys.use_dithering=1 \
    ro.sf.lcd_density=240 \
    ro.compcache.default=0

# FB0 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Set region
PRODUCT_DEFAULT_LANGUAGE := en_US
PRODUCT_DEFAULT_REGION := US

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := csl_mi410
PRODUCT_DEVICE := fb0
PRODUCT_BRAND := CSL
PRODUCT_MODEL := CSL-MI410
PRODUCT_MANUFACTURER := FIH
