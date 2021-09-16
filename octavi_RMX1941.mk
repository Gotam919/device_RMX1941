#
# Copyright (C) 2020 Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CorvusOS stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Inherit from RMX1941 device makefile
$(call inherit-product, device/realme/RMX1941/device.mk)

# NusantaraProject stuff
TARGET_BOOT_ANIMATION_RES := 720
ALLOW_MISSING_DEPENDENCIES=true
OCTAVI_DEVICE_MAINTAINER := Sundram™
scr_resolution := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_RMX1941
PRODUCT_DEVICE := RMX1941
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme C2
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "google/coral/coral:11/RQ3A.210805.001.A1/7474174:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX1941 \
    PRODUCT_NAME=RMX1941 \
    PRIVATE_BUILD_DESC="full_oppo6762-user 10 QP1A.190711.020 bedd37e98646d3a1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
