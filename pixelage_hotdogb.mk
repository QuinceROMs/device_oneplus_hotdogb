#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# arcore
TARGET_INCLUDE_STOCK_ARCORE := true

# AICore
TARGET_INCLUDE_STOCK_AICORE := false

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7T-user 11 RKQ1.201022.002 2206241702 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7T_CH/OnePlus7T:11/RKQ1.201022.002/2206241702:user/release-keys \
    DeviceName=OnePlus7T \
    DeviceProduct=OnePlus7T \
    SystemDevice=OnePlus7T \
    SystemName=OnePlus7T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
