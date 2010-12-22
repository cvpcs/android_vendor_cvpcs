$(call inherit-product, vendor/cvpcs/products/cvpcs_gem.mk)

# set up version info
include vendor/cvpcs/products/cvpcs_version.mk
build_name := Emerald
build_version := $(build_version_major).$(build_version_minor).$(build_version_revision)

PRODUCT_NAME := cvpcs_emerald_supersonic
PRODUCT_BRAND := htc
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC

product_version := $(build_name)-$(build_version)-$(PRODUCT_MODEL)

PRODUCT_BUILD_PROP_OVERRIDES := \
        BUILD_DATE_UTC=1287165389 \
        BUILD_DISPLAY_ID=3.30.651.2 \
        BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/271968:user/release-keys \
        BUILD_ID=FRF91 \
        BUILD_NUMBER=271968 \
        BUILD_VERSION_TAGS=release-keys \
        PRIVATE_BUILD_DESC="3.30.651.2 CL271968 release-keys" \
        PRODUCT_NAME=htc_supersonic \
        PRODUCT_BRAND=sprint \
        TARGET_BUILD_TYPE=user \
        USER=android-build

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	vendor/cvpcs/prebuilt/htc/supersonic/system/media/bootanimation.zip:system/media/bootanimation.zip

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(product_version) \
	ro.rommanager.developerid=cvpcs \
	ro.cvpcs.build.name=$(build_name) \
	ro.cvpcs.build.version=$(build_version) \
	ro.cvpcs.scriptybox.files_url=http://files.ccroms.net/emerald/froyo/$(build_version)

# include proprietaries for now
USE_PROPRIETARIES := \
	htc

# include the device makefile
$(call inherit-product, device/htc/supersonic/device.mk)
