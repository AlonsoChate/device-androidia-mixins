DEVICE_PACKAGE_OVERLAYS += ${TARGET_DEVICE_DIR}/overlay

BOARD_KERNEL_CMDLINE += \
	no_timer_check \
	noxsaves \
	reboot_panic=p,w \
	i915.hpd_sense_invert=0x7 \
	intel_iommu=off \
	i915.enable_pvmmio=0

BOARD_FLASHFILES += ${TARGET_DEVICE_DIR}/bldr_utils.img:bldr_utils.img

# for USB OTG WA
BOARD_SEPOLICY_DIRS += $(INTEL_PATH_SEPOLICY)/bxt_usb

# i915_async
BOARD_SEPOLICY_DIRS += $(INTEL_PATH_SEPOLICY)/i915_async

#add vendor property
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/vendor/

TARGET_USES_HWC2 := true
BOARD_USES_GENERIC_AUDIO := false

DEVICE_MANIFEST_FILE := ${TARGET_DEVICE_DIR}/manifest.xml
DEVICE_MATRIX_FILE   := ${TARGET_DEVICE_DIR}/compatibility_matrix.xml
