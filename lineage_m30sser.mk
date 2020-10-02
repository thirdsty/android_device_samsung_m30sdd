#
# Copyright (C) 2019-2020 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := m30sser

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from m30sser device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m30sser
PRODUCT_NAME := lineage_m30sser
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M307FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := M307FN
PRODUCT_PDA_MODEL_VERSION := XXU3BTG3
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint
BUILD_FINGERPRINT := samsung/m30sser/m30s:10/QP1A.190711.020/$(PRODUCT_PDA_VERSION):user/release-keys

# Build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=m30sser \
	TARGET_DEVICE=m30s \
	PRIVATE_BUILD_DESC="m30sser-user 10 QP1A.190711.020 $(PRODUCT_PDA_VERSION) release-keys"
