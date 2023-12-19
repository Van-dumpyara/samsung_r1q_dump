#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from r1q device
$(call inherit-product, device/samsung/r1q/device.mk)

PRODUCT_DEVICE := r1q
PRODUCT_NAME := lineage_r1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A805F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r1qxx-user 11 RP1A.200720.012 A805FXXU7DWF5 release-keys"

BUILD_FINGERPRINT := samsung/r1qxx/r1q:11/RP1A.200720.012/A805FXXU7DWF5:user/release-keys
