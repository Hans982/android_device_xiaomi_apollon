#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ALLOW_MISSING_DEPENDENCIES := true
TARGET_DISABLE_EPPE := true
BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollon/device.mk)

# LunarisAosp
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120,144
TARGET_CUSTOM_UDFPS := false
WITH_GMS := true
WITH_BCR := true

PRODUCT_NAME := lineage_apollon
PRODUCT_DEVICE := apollon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="apollo_global-user 12 RKQ1.211001.001 V14.0.4.0.SJDMIXM release-keys" \
    BuildFingerprint=Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V14.0.4.0.SJDMIXM:user/release-keys
