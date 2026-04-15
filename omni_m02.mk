# Inherit from twrp_m02
$(call inherit-product, device/samsung/m02/twrp_m02.mk)

# Override product name for omni compatibility
PRODUCT_NAME := omni_m02
PRODUCT_DEVICE := m02
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M022G
