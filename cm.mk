$(call inherit-product, device/lge/h830/full_h830.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := cm_h830

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="h1_tmo_us" \
    BUILD_FINGERPRINT="lge/h1_tmo_us/h1:6.0.1/MMB29M/1614410155f20:user/release-keys" \
    PRIVATE_BUILD_DESC="h1_tmo_us-user 6.0.1 MMB29M 1614410155f20 release-keys"
