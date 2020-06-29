# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m30s device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m30sdd
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m30sdd
PRODUCT_MODEL := SM-M307F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m30sdd
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m30sser-user 10 QP1A.190711.020 M307FNXXU2BTD1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m30sser/m30s:10/QP1A.190711.020/M307FNXXU2BTD1:user/release-keys
