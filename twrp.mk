###########################################################
### TWRP RECOVERY
###########################################################

RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab

### INIT
# Use rootdir/init.recovery.usb.rc
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_DEVICE_MODULES := init.recovery.usb.rc

### KERNEL
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

### QCOM
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true

### SCREEN BRIGHTNESS
TW_BRIGHTNESS_PATH := /sys/class/leds/wled/brightness
TW_MAX_BRIGHTNESS := 4095
TW_DEFAULT_BRIGHTNESS := 1600

# Add logcat support
TWRP_INCLUDE_LOGCAT := true
# Use toolbox instead of busybox
TW_USE_TOOLBOX := true

# Enable support for encrypted fs
TW_INCLUDE_CRYPTO := true

TW_NO_EXFAT_FUSE := true
TW_EXCLUDE_SUPERSU := true

TW_THEME := portrait_hdpi
