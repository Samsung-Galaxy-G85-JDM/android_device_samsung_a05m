#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Inherit from a05m device
$(call inherit-product, device/samsung/a05m/device.mk)

# Inherit from wingcamera-samsung
$(call inherit-product, vendor/samsung/wing-camera/wingcamera-samsung.mk)

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_DEVICE := a05m
PRODUCT_NAME := aosp_a05m
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A05
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
ALPHA_MAINTAINER := Smiley_9000
WITH_GMS := true
TARGET_BUILD_PACKAGE := 3

WITH_GMS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a05mxx-user 14 UP1A.231005.007 A055FXXS7CXJ1 release-keys" \
    BuildFingerprint=samsung/a05mxx/a05m:14/UP1A.231005.007/A055FXXS7CXJ1:user/release-keys


