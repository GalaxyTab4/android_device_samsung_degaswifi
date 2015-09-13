# Copyright (C) 2013 The CyanogenMod Project
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


# Target info
USE_CAMERA_STUB := true
BOARD_HAS_NO_SELECT_BUTTON := true

# MRVL hardware
BOARD_USES_MRVL_HARDWARE := true

# Architecture
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mrvl
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := PXA1088
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Not Yet
#TARGET_BOARD_INFO_FILE := device/samsung/degaswifi/board-info.txt

# Kernel
TARGET_KERNEL_SOURCE 	:= kernel/samsung/degaswifi
TARGET_KERNEL_CONFIG	:= cyanogenmod_degaswifi_defconfig
BOARD_KERNEL_BASE 		:= 0x10000000
BOARD_KERNEL_PAGESIZE 	:= 2048
BOARD_KERNEL_CMDLINE 	:= 
BOARD_MKBOOTIMG_ARGS 	:= --ramdisk_offset 0x01000000
BOARD_CUSTOM_BOOTIMG 	:= device/samsung/degaswifi/degas-mkbootimg
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/degaswifi/degas-mkbootimg.mk

# Classpath
PRODUCT_BOOT_JARS := $(subst $(space),:,$(PRODUCT_BOOT_JARS))

# TARGET_PREBUILT_KERNEL := 

# Kernel Modules
#SAMSUNG_MODULES:
#	make -C kernel/samsung/degaswifi_modules/ clean_modules KERNELDIR=$(KERNEL_OUT) CROSS_COMPILE=$(ANDROID_TOOLCHAIN)/arm-linux-androideabi-
#	make -C kernel/samsung/degaswifi_modules/ modules CFLAGS_MODULE=-fno-pic KERNELDIR=$(KERNEL_OUT) CROSS_COMPILE=$(ANDROID_TOOLCHAIN)/arm-linux-androideabi-
#	mkdir -p out/target/product/degaswifi/recovery/root/lib/modules
#	cp $(KERNEL_OUT)/drivers/exfat/*.ko out/target/product/degaswifi/recovery/root/lib/modules/
#	find kernel/samsung/degaswifi_modules/ -type f -name *.ko -exec cp {} $(KERNEL_MODULES_OUT) \;
#
#TARGET_KERNEL_MODULES += SAMSUNG_MODULES
    
# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1507852288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5775556608
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/samsung/degaswifi/rootdir/fstab.pxa1088
RECOVERY_FSTAB_VERSION := 2
#TARGET_RECOVERY_INITRC := device/samsung/degaswifi/recovery/root/init.recovery.rc
BOARD_RECOVERY_SWIPE := true

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/degaswifi/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true
MRVL_WIRELESS_DAEMON_API := true

# WiFi
BOARD_WLAN_VENDOR := MRVL
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8xxx.ko"
WIFI_DRIVER_MODULE_NAME	:= "sd8xxx"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/mrvl/sd8777_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/sd8xxx/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
MRVL_WIRELESS_DAEMON_API := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 17
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun0/file"

# Graphics
USE_OPENGL_RENDERER := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
#COMMON_GLOBAL_CFLAGS += -DWORKAROUND_BUG_10194508
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
VSYNC_EVENT_PHASE_OFFSET_NS := 0
BOARD_HAVE_PIXEL_FORMAT_INFO := true
BOARD_USE_MHEAP_SCREENSHOT := true

# Audio
BOARD_USES_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Webkit
ENABLE_WEBGL := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NEEDS_CUTILS_LOG := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
BOARD_USES_HWCOMPOSER := true

TARGET_HARDWARE_3D := false

BOARD_ENABLE_MULTI_DISPLAYS := true

#Generic config
MRVL_ION := true

#BOARD_GFX_DRIVER_VERSION=4x

#DYNAMIC_ALSA_PARAMS := true

#Enable marvell interface in SurfaceFlinger
MRVL_INTERFACE_ANIMATION := true
#ENABLE_HWC_GC_PATH := true

#Launch DMS in SurfaceFlinger process
MRVL_LAUNCH_DMS_IN_SURFACEFLINGER := true

TARGET_FORCE_CPU_UPLOAD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/degaswifi/bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := false

# Needed for blobs
#COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DBOARD_EGL_NEEDS_LEGACY_FB
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_DVFS
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Charging mode
#BOARD_CHARGER_RES := device/samsung/degaswifi/res/charger
BOARD_CHARGING_MODE_BOOTING_LPM := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/degaswifi/include

# Sec_touchscreen
INPUT_TOUCH_DRIVER := TOUCH_LT

# Compatibility with pre-kitkat Sensor HALs
SENSORS_NEED_SETRATE_ON_ENABLE := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/degaswifi/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    dhcp.te \
    file.te \
    init.te \
    mediaserver.te \
    netmgrd.te \
    rild.te \
    secril.te \
    system.te \
    ueventd.te \
    wpa_supplicant.te

#TWRP
DEVICE_RESOLUTION := 800x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files
SP2_NAME := "modem"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
TW_NO_USB_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel/brightness


