#
# Copyright (C) 2016 The M571-CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := m2note

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/m2note/device_m2note.mk)

# Configure dalvik heap
# $(call inherit-product, frameworks/native/build/phone-xxxhdpi-2048-dalvik-heap.mk)

# Configure hwui memory
# $(call inherit-product, frameworks/native/build/phone-xxxhdpi-2048-hwui-memory.mk)

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m2note \
    PRIVATE_BUILD_DESC="meizu_m2note-user 5.1 LMY47D 1472409018 release-keys" \
    BUILD_FINGERPRINT="Meizu/meizu_m2note/m2note:5.1/LMY47D/1472409018:user/release-keys" \

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m2note
PRODUCT_NAME := cm_m2note
PRODUCT_BRAND := MEIZU
PRODUCT_MODEL := M2 Note
PRODUCT_MANUFACTURER := MEIZU
