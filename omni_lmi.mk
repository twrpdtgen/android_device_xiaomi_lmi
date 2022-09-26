#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

PRODUCT_DEVICE := lmi
PRODUCT_NAME := omni_lmi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Lmi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.5.6.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lmi/lmi:11/RKQ1.200826.002/V12.5.6.0.RJKMIXM:user/release-keys
