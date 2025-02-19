# Copyright (C) 2019 The PixelDust Project
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

# We modify several neverallows, so let the build proceed
ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

ifneq ($(IS_GENERIC_SYSTEM_IMAGE), true)
ifeq ($(SIGN_KEY), RELEASE)

PRODUCT_PRODUCT_PROPERTIES += \
    sys.ota.disable_uncrypt=1 \
    pixeldust.updater.allow_downgrading=1

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/etc/privapp-permissions/com.pixeldust.updater.xml:system/etc/permissions/com.pixeldust.updater.xml

endif
endif
