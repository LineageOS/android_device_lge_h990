$(call inherit-product, device/lge/h990/full_h990.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := lineage_h990

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v20" \
    PRODUCT_NAME="elsa_global_com" \
    BUILD_FINGERPRINT="lge/elsa_global_com/elsa:7.0/NRD90M/172660156b764:user/release-keys" \
    PRIVATE_BUILD_DESC="elsa_global_com-user 7.0 NRD90M 172660156b764 release-keys"
