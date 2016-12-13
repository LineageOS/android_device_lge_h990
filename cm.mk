$(call inherit-product, device/lge/h918/full_h918.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := cm_h918

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v20" \
    PRODUCT_NAME="elsa_tmo_us" \
    BUILD_FINGERPRINT="lge/elsa_tmo_us/elsa:7.0/NRD90M/1625821141c30:user/release-keys" \
    PRIVATE_BUILD_DESC="elsa_tmo_us-user 7.0 NRD90M 1625821141c30 release-keys"
