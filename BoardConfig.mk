# inherit from the proprietary version
-include vendor/fih/fb0/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/fih/fb0/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_USES_2G_VM_SPLIT := true
# TARGET_USES_OLD_LIBSENSORS_HAL := true

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/fih/fb0/releasetools/fb0_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/fih/fb0/releasetools/fb0_ota_from_target_files

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_AUDIO_V2 := true
#BOARD_PREBUILT_LIBAUDIO := true
#TARGET_PROVIDES_LIBAUDIO := true
BUILD_WITHOUT_PV := false

# HDMI
TARGET_HAVE_HDMI_OUT := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := tavarua

# Graphics
BOARD_EGL_CFG := device/fih/fb0/egl.cfg
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_NO_RGBX_8888 := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
BOARD_WEXT_NO_COMBO_SCAN := true

# Camera
#BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true
USE_CAMERA_STUB := false
# BOARD_USE_REVERSE_FFC := true

# GPS Defines
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := fb0
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
BOARD_VENDOR_QCOM_GPS_NEEDS_LNA := true
BOARD_VENDOR_QCOM_GPS_HAS_BROKEN_XTRA := true

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/fih/fb0/recovery_kernel
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/fih/fb0/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/fih/fb0/recovery/minui/graphics.c

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p7
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p11
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 260046848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1191182336
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_OTA_ASSERT_DEVICE := fb0
TARGET_BOOTLOADER_BOARD_NAME := fb0

TARGET_PREBUILT_KERNEL := device/fih/fb0/kernel
