$(call inherit-product, vendor/cvpcs/products/cvpcs_gem.mk)

# set up version info
include vendor/cvpcs/products/cvpcs_version.mk
build_name := Obsidian
build_version := $(build_version_major).$(build_version_minor).$(build_version_revision)

PRODUCT_NAME := cvpcs_obsidian_shadow
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := shadow
PRODUCT_MODEL := DROIDX
PRODUCT_MANUFACTURER := motorola

product_version := $(build_name)-$(build_version)-$(PRODUCT_MODEL)

# 2.2 build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_ID=VZW \
	BUILD_DISPLAY_ID=VZW \
	BUILD_NUMBER=2.2.9 \
	BUILD_DATE_UTC=1279771813 \
	TARGET_BUILD_TYPE=user \
	USER=w30471 \
	BUILD_VERSION_TAGS=test-keys \
	PRODUCT_MODEL_INTERNAL=MB810 \
	PRODUCT_BRAND=verizon \
	PRODUCT_NAME=shadow_vzw \
	TARGET_DEVICE=cdma_shadow \
	BUILD_PRODUCT=shadow_vzw \
	PRIVATE_BUILD_DESC="cdma_shadow-user 2.2 VZW 2.2.9 ota-rel-keys,release-keys" \
	BUILD_FINGERPRINT=verizon/shadow_vzw/cdma_shadow/shadow:2.2/VZW/22.9:user/ota-rel-keys,release-keys

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	vendor/cvpcs/prebuilt/motorola/shadow/system/media/bootanimation.zip:system/media/bootanimation.zip

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(product_version) \
	ro.rommanager.developerid=cvpcs \
	ro.cvpcs.build.name=$(build_name) \
	ro.cvpcs.build.version=$(build_version) \
	ro.cvpcs.scriptybox.files_url=http://files.ccroms.net/obsidian/froyo/$(build_version)

# use edify ota script (for whatever reason)
TARGET_OTA_SCRIPT_MODE := edify

# disable building/inclusion of a recovery image
TARGET_NO_RECOVERY := true

# we don't want to overwrite the kernel either, as the bootloader is signed
TARGET_NO_KERNEL := true

# we have a camera, don't stubbify
USE_CAMERA_STUB := false

# include proprietaries for now
USE_PROPRIETARIES := \
	motorola

# include the device makefile
$(call inherit-product, device/motorola/shadow/device.mk)
