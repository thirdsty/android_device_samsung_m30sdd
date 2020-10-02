#
# Copyright (C) 2020 The LineageOS Project
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

# Board device path
DEVICE_PATH := device/samsung/m30sser

# Assert
TARGET_OTA_ASSERT_DEVICE := m30sser,sm-m307fn

# Enable hardware/samsung
BOARD_VENDOR := samsung

# Kernel
TARGET_KERNEL_CONFIG := exynos9611-m30sser_defconfig

# Enable Binder
TARGET_USES_64_BIT_BINDER := true

# Vendor
BUILD_WITHOUT_VENDOR := true
TARGET_COPY_OUT_VENDOR := vendor
VENDOR_SECURITY_PATCH := 2020-06-01

# Use the non-open-source parts, if they're present
-include vendor/samsung/m30sser/BoardConfigVendor.mk
