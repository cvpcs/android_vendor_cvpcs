$(call inherit-product, vendor/cvpcs/products/cvpcs_gem.mk)

# set up version info
include vendor/cvpcs/products/cvpcs_version.mk
build_name := Titanite
build_version := $(build_version_major).$(build_version_minor).$(build_version_revision)

PRODUCT_NAME := cvpcs_titanite_mecha
PRODUCT_BRAND := htc
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ADR6400L
PRODUCT_MANUFACTURER := HTC

product_version := $(build_name)-$(build_version)-$(PRODUCT_MODEL)

PRODUCT_BUILD_PROP_OVERRIDES := \
        BUILD_ID=FRG83D \
        BUILD_DISPLAY_ID=FRG83D \
        BUILD_NUMBER=313761 \
        BUILD_DATE_UTC=1294063506 \
        TARGET_BUILD_TYPE=user \
        USER=android-build \
        BUILD_VERSION_TAGS=release-keys \
        PRODUCT_BRAND=verizon_wwe \
        PRODUCT_NAME=htc_mecha \
        PRIVATE_BUILD_DESC="1.03.605.10 CL313761 release-keys" \
        BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha/mecha:2.2.1/FRG83D/313761:user/release-keys

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	vendor/cvpcs/prebuilt/htc/supersonic/system/media/bootanimation.zip:system/media/bootanimation.zip

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(product_version) \
	ro.rommanager.developerid=cvpcs \
	ro.cvpcs.build.name=$(build_name) \
	ro.cvpcs.build.version=$(build_version) \
	ro.cvpcs.scriptybox.files_url=http://files.ccroms.net/titanite/froyo/$(build_version)

# include proprietaries for now
USE_PROPRIETARIES := \
	htc

# include the device makefile
$(call inherit-product, device/htc/mecha/device.mk)
