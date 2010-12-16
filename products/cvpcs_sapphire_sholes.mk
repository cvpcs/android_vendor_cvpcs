$(call inherit-product, vendor/cvpcs/products/cvpcs_gem.mk)

# set up version info
include vendor/cvpcs/products/cvpcs_version.mk
build_name := Sapphire
build_version := $(build_version_major).$(build_version_minor).$(build_version_revision)

PRODUCT_NAME := cvpcs_sapphire_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

product_version := $(build_name)-$(build_version)-$(PRODUCT_MODEL)

# 2.2 build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_DATE_UTC=1289367602 \
	BUILD_DISPLAY_ID=FRG83D \
	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2.1/FRG83D/75603:user/release-keys \
	BUILD_ID=FRG83D \
	BUILD_NUMBER=75603 \
	BUILD_VERSION_TAGS=release-keys \
	PRIVATE_BUILD_DESC="voles-user 2.2.1 FRG83D 75603 release-keys" \
	PRODUCT_NAME=voles \
	PRODUCT_BRAND=verizon \
	TARGET_DEVICE=sholes \
	TARGET_BUILD_TYPE=user \
	USER=android-build

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	vendor/cvpcs/prebuilt/motorola/sholes/system/media/bootanimation.zip:system/media/bootanimation.zip

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(product_version) \
	ro.rommanager.developerid=cvpcs \
	ro.cvpcs.build.name=$(build_name) \
	ro.cvpcs.build.version=$(build_version) \
	ro.cvpcs.scriptybox.files_url=http://files.ccroms.net/sapphire/froyo/$(build_version)

# include proprietaries for now
USE_PROPRIETARIES := \
	motorola

# include the device makefile
$(call inherit-product, device/motorola/sholes/device.mk)
