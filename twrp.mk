# $ git clone https://github.com/TeamWin/android_bootable_recovery.git ./lineage/bootable/recovery
# $ export WITH_TWRP=true
# $ mka recoveryimage

RECOVERY_VARIANT := twrp

# LZMA support
LZMA_RAMDISK_TARGETS := recovery

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab

# TWRP GUI
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_OTA_ASSERT_DEVICE := a3y17lte
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NO_REBOOT_BOOTLOADER := true

# Filesystem features
TW_INCLUDE_CRYPTO := true
AB_OTA_UPDATER := false
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true

# Android Verified Boot / DM-Verity
BOARD_AVB_ENABLE := false

