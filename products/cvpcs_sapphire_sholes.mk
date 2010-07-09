$(call inherit-product, vendor/cvpcs/products/cvpcs_generic.mk)

# set up version info
include vendor/cvpcs/products/cvpcs_version.mk
build_name := Sapphire
build_version := $(build_version_major).$(build_version_minor).$(build_version_revision)

PRODUCT_NAME := cvpcs_sapphire_sholes
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

product_version := $(build_name)-$(build_version)-$(PRODUCT_MODEL)

PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_ID=FRF84B \
	BUILD_DISPLAY_ID=$(product_version) \
	PRODUCT_NAME=voles \
	TARGET_DEVICE=sholes \
	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.1-update1/ESE81/29593:user/release-keys \
	PRODUCT_BRAND=verizon
#	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2/FRF84B/42477:user/release-keys \

# grab hdpi versions of this stuff
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	SoundRecorder \
	VisualizationWallpapers \
	VoiceDialer \
	libRS \
	librs_jni

# include cvpcs-specific packages
PRODUCT_PACKAGES += \
	EliotStockerMusic \
	GEMSettings

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	vendor/cvpcs/CHANGELOG:system/etc/CHANGELOG-GEM \
	vendor/cvpcs/prebuilt/common/system/app/IM.apk:system/app/IM.apk \
        vendor/cvpcs/prebuilt/common/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/00_banner:system/etc/init.d/00_banner \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/01_cpufreq:system/etc/init.d/01_cpufreq \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/10_sysrw:system/etc/init.d/10_sysrw \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/11_depmod:system/etc/init.d/11_depmod \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/19_sysro:system/etc/init.d/19_sysro \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/98_cron:system/etc/init.d/98_cron \
	vendor/cvpcs/prebuilt/common/system/etc/init.d/99_ready:system/etc/init.d/99_ready \
	vendor/cvpcs/prebuilt/common/system/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
	vendor/cvpcs/prebuilt/common/system/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
	vendor/cvpcs/prebuilt/common/system/media/bootanimation.zip:system/media/bootanimation.zip \
	vendor/cvpcs/prebuilt/common/system/media/audio/ringtones/Hana_Maru_Caramell.ogg:system/media/audio/ringtones/Hana_Maru_Caramell.ogg \
	vendor/cvpcs/prebuilt/common/system/media/audio/notifications/droid.ogg:system/media/audio/notifications/droid.ogg \
	vendor/cvpcs/prebuilt/common/system/media/audio/notifications/Incoming_Message.ogg:system/media/audio/notifications/Incoming_Message.ogg \
	vendor/cvpcs/prebuilt/sholes/initrd/init.rc:$(TARGET_ROOT_OUT)/root/init.rc

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.notification_sound=Incoming_Message.ogg \
	ro.config.ringtone=Hana_Maru_Caramell.ogg \
	ro.modversion=$(product_version) \
	ro.rommanager.developerid=cvpcs

# use our custom init.rc script for our rootdir
TARGET_PROVIDES_INIT_RC := true

# use edify ota script (for whatever reason)
TARGET_OTA_SCRIPT_MODE := edify

# disable building/inclusion of a recovery image
TARGET_NO_RECOVERY := true

# we have a camera, don't stubbify
USE_CAMERA_STUB := false

# include superuser
PRODUCT_PACKAGES += Superuser

# include proprietaries for now
USE_PROPRIETARIES := \
	google \
	motorola

# grab some sounds
include frameworks/base/data/sounds/OriginalAudio.mk
include frameworks/base/data/sounds/AudioPackage4.mk

# locales!
PRODUCT_LOCALES := \
	en_US \
	ar_EG \
	ar_IL \
	bg_BG \
	ca_ES \
	cs_CZ \
	da_DK \
	de_AT \
	de_CH \
	de_DE \
	de_LI \
	el_GR \
	en_AU \
	en_CA \
	en_GB \
	en_IE \
	en_IN \
	en_NZ \
	en_SG \
	en_ZA \
	es_ES \
	es_US \
	fi_FI \
	fr_BE \
	fr_CA \
	fr_CH \
	fr_FR \
	he_IL \
	hi_IN \
	hr_HR \
	hu_HU \
	id_ID \
	it_CH \
	it_IT \
	iw_IL \
	ja_JP \
	ko_KR \
	lt_LT \
	lv_LV \
	nb_NO \
	nl_BE \
	nl_NL \
	pl_PL \
	pt_BR \
	pt_PT \
	ro_RO \
	ru_RU \
	sk_SK \
	sl_SI \
	sr_RS \
	sv_SE \
	th_TH \
	tl_PH \
	tr_TR \
	uk_UA \
	vi_VN \
	zh_CN \
	zh_TW \

# include the device makefile
$(call inherit-product, device/motorola/sholes/device.mk)
