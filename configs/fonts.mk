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

# Custom fonts configuration
PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# ThemePicker font overlays
PRODUCT_PACKAGES += \
    FontSurferSourceOverlay \
    FontRubikRubikOverlay \
    FontLGSmartGothicSourceOverlay \
    FontArbutusSourceOverlay \
    FontSonySketchSourceOverlay \
    FontArvoLatoOverlay \
    FontAmaranteSourceOverlay \
    FontAclonicaSourceOverlay \
    FontCagliostroSourceOverlay \
    FontCoolstorySourceOverlay \
    FontRosemarySourceOverlay \
    FontBariolSourceOverlay

# Fonts
$(call inherit-product, external/google-fonts/arbutus-slab/fonts.mk)
$(call inherit-product, external/google-fonts/lato/fonts.mk)
$(call inherit-product, external/google-fonts/rubik/fonts.mk)

# Prebuilt fonts
PREBUILT_FONTS := GoogleSans/GoogleSans-Bold GoogleSans/GoogleSans-Medium \
	GoogleSans/GoogleSans-Regular GoogleSans/GoogleSans-MediumItalic \
	GoogleSans/GoogleSans-Italic GoogleSans/GoogleSans-BoldItalic \
	ProductSans/ProductSans-LightItalic ProductSans/ProductSans-Regular \
	ProductSans/ProductSans-Light ProductSans/ProductSans-Thin \
	ProductSans/ProductSans-ThinItalic ProductSans/ProductSans-Italic Gobold/GoboldBold-Italic \
	Gobold/GoboldThinLight-Italic Gobold/Gobold-Italic Gobold/GoboldThinLight Gobold/GoboldBold \
	Gobold/Gobold Amarante burnstown road_rage neoneon dumbledor PhantomBold \
	Cagliostro-Regular Shamshung Surfer Rosemary-Regular Coolstory-Regular Bariol-Regular \
	SonySketch SamsungOne mexcellent LGSmartGothic Aclonica snowstorm

PRODUCT_COPY_FILES += $(foreach f,$(PREBUILT_FONTS),\
	vendor/pixeldust/prebuilt/fonts/$(f).ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/$(or $(word 2,$(subst /, ,$(f))),$(f)).ttf)

# Themable font
PRODUCT_COPY_FILES += \
    vendor/pixeldust/prebuilt/fonts/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableFont-Regular.ttf
