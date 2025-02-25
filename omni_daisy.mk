#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit PRBP Stuffs
$(call inherit-product, vendor/pb/config/common.mk)

# Platform
TARGET_BOARD_PLATFORM := msm8953

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=$(TARGET_BOARD_PLATFORM) \
    ro.hardware.bootctrl=$(TARGET_BOARD_PLATFORM) \
    ro.treble.enabled=true

## Device identifier. This must come after all inclusions
BOARD_VENDOR := Xiaomi
PRODUCT_DEVICE := daisy
PRODUCT_NAME := omni_daisy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
