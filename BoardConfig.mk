USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/matsunichi/tc979/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := tc979

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom kgsl.ptcount=16
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 350003200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1074790400
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/matsunichi/tc979/kernel

# Potential fix for color issues, untested leaving it here for now ~jcase
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Another potential fix for the pinkness
BOARD_CUSTOM_GRAPHICS:= ../../../device/matsunichi/tc979/recovery/minui/graphics.c

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
