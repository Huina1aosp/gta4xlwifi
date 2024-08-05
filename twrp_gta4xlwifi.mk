#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta4xlwifi device
$(call inherit-product, device/samsung/gta4xlwifi/device.mk)

PRODUCT_DEVICE := gta4xlwifi
PRODUCT_NAME := twrp_gta4xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P610
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4xlwifixx-user 13 TP1A.220624.014 P610XXS5FXE4 release-keys"

BUILD_FINGERPRINT := samsung/gta4xlwifixx/gta4xlwifi:13/TP1A.220624.014/P610XXS5FXE4:user/release-keys
