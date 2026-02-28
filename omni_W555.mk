#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from W555 device
$(call inherit-product, device/uniwa/W555/device.mk)

PRODUCT_DEVICE := W555
PRODUCT_NAME := omni_W555
PRODUCT_BRAND := UNIWA
PRODUCT_MODEL := W555
PRODUCT_MANUFACTURER := uniwa

PRODUCT_GMS_CLIENTID_BASE := android-uniwa

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k61v1_64_bsp-user 12 SP1A.210812.016 rck61v164bspP107 release-keys"

BUILD_FINGERPRINT := UNIWA/W555/W555:12/SP1A.210812.016/1735804501:user/release-keys
