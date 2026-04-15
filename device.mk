$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
-include device/samsung/m02/BoardConfig.mk
PRODUCT_COPY_FILES += device/samsung/m02/recovery.fstab:recovery/root/etc/twrp.fstab
