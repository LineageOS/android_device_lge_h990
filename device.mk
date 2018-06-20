#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/h990/h990-vendor.mk)

# common v20
$(call inherit-product, device/lge/v20-common/v20.mk)

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_elsa_global_com.conf:system/etc/sensors/sensor_def_variable.conf

# WiFi Calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bcmdhd.cal:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd.cal

# Device init scripts
PRODUCT_PACKAGES += \
    init.ril2.rc

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds

LOCAL_CFLAGS += \
   -DANDROID_MULTI_SIM \
   -DANDROID_SIM_COUNT_2
