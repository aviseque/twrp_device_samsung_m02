# ==========================================
# TWRP Board Configuration for SM-M022G
# Samsung Galaxy M02 | MT6739WW | Android 11
# ==========================================

DEVICE_PATH := device/samsung/m02

# ==========================================
# Architecture (32-bit kernel on 64-bit SoC)
# ==========================================
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# ==========================================
# Bootloader
# ==========================================
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6739

# ==========================================
# Platform
# ==========================================
TARGET_BOARD_PLATFORM := mt6739
TARGET_BOARD_PLATFORM_GPU := PowerVR GE8100

# ==========================================
# Kernel (from stock recovery)
# ==========================================
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x40008000
BOARD_RAMDISK_OFFSET := 0x45000000
BOARD_TAGS_OFFSET := 0x44000000
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# ==========================================
# Partitions
# ==========================================
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# ==========================================
# Filesystems
# ==========================================
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# ==========================================
# TWRP Flags - CRITICAL FOR WORKING TWRP
# ==========================================
TW_NO_SYSTEM_ROOT := true
TW_USE_TOOLBOX := true
TW_USE_NEW_MINADBD := true
TW_NO_SEANDROID := false
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TW_NO_LEGACY_PROPS := true
TW_STORAGE_PATHS := "/data/media"
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_NO_SCREEN_BLANK := true
TW_IGNORE_MISC_WIPE_DATA := true

# ==========================================
# CRITICAL: Forces TWRP binary to be included
# ==========================================
TW_INCLUDE_INJECTTWRP := true

# ==========================================
# SELinux
# ==========================================
SELINUX_IGNORE_NEVERALLOWS := true

# ==========================================
# MediaTek Hardware
# ==========================================
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
