# Device path
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device identifier
PRODUCT_DEVICE := m02
PRODUCT_NAME := omni_m02
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M022G
PRODUCT_MANUFACTURER := samsung

# Recovery
PRODUCT_PACKAGES += \
    recovery \
    twrp

# Copy fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab
