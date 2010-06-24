$(call inherit-product, device/cvpcs/sholes/cvpcs_generic.mk)

PRODUCT_NAME := cvpcs_sapphire_sholes
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_ID=FRF57 \
	BUILD_DISPLAY_ID=Sapphire-0.6.0-Droid \
	PRODUCT_NAME=voles \
	TARGET_DEVICE=sholes \
	BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2/FRF72/40830:user/release-keys \
	PRODUCT_BRAND=verizon
#	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.1-update1/ESE81/29593:user/release-keys \

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

# copy some prebuilts
PRODUCT_COPY_FILES +=  \
	device/cvpcs/CHANGELOG:system/etc/CHANGELOG-SR \
        device/cvpcs/prebuilt/sholes/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/00_banner:system/etc/init.d/00_banner \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/01_cpufreq:system/etc/init.d/01_cpufreq \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/10_sysrw:system/etc/init.d/10_sysrw \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/11_depmod:system/etc/init.d/11_depmod \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/19_sysro:system/etc/init.d/19_sysro \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/98_cron:system/etc/init.d/98_cron \
	device/cvpcs/prebuilt/sholes/system/etc/init.d/99_ready:system/etc/init.d/99_ready \
	device/cvpcs/prebuilt/sholes/system/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
	device/cvpcs/prebuilt/sholes/system/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
	device/cvpcs/prebuilt/sholes/system/media/bootanimation.zip:system/media/bootanimation.zip \
	device/cvpcs/prebuilt/sholes/system/media/audio/ringtones/Hana_Maru_Caramell.ogg:system/media/audio/ringtones/Hana_Maru_Caramell.ogg \
	device/cvpcs/prebuilt/sholes/system/media/audio/notifications/Incoming_Message.ogg:system/media/audio/notifications/Incoming_Message.ogg \
	device/cvpcs/prebuilt/sholes/initrd/init.rc:$(TARGET_ROOT_OUT)/root/init.rc

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.notification_sound=Incoming_Message.ogg \
	ro.config.ringtone=Hana_Maru_Caramell.ogg \
	ro.modversion=Sapphire-0.6.0-Droid \
	ro.rommanager.developerid=cvpcs

# include all of the files for the prebuilt kernel
# available kernels are:
#     bekit_sapphire_sholes_7x1000LV_defconfig
#     bekit_sapphire_sholes_7x1000SV_defconfig
#     bekit_sapphire_sholes_7x1100IV_defconfig
#     bekit_sapphire_sholes_7x1100LV_defconfig
#     bekit_sapphire_sholes_7x1100SV_defconfig
#     bekit_sapphire_sholes_7x1200IV_defconfig
#     bekit_sapphire_sholes_7x1200LV_defconfig
#     bekit_sapphire_sholes_7x1200SV_defconfig
#     bekit_sapphire_sholes_7x1300IV_defconfig
#     bekit_sapphire_sholes_7x1300LV_defconfig
#     bekit_sapphire_sholes_7x1300SV_defconfig
#     bekit_sapphire_sholes_7x800LV_defconfig
#     bekit_sapphire_sholes_7x800SV_defconfig
#     bekit_sapphire_sholes_stock_defconfig
#kern_sholes_oc := bekit_sapphire_sholes_stock_defconfig
#TARGET_PREBUILT_KERNEL := device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/zImage
#PRODUCT_COPY_FILES += \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/cifs.ko:system/lib/modules/cifs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/exportfs.ko:system/lib/modules/exportfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/ext2.ko:system/lib/modules/ext2.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/ext3.ko:system/lib/modules/ext3.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/ext4.ko:system/lib/modules/ext4.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/fuse.ko:system/lib/modules/fuse.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/hid-dummy.ko:system/lib/modules/hid-dummy.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/isofs.ko:system/lib/modules/isofs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/jbd2.ko:system/lib/modules/jbd2.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/jbd.ko:system/lib/modules/jbd.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/jfs.ko:system/lib/modules/jfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/lockd.ko:system/lib/modules/lockd.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/mbcache.ko:system/lib/modules/mbcache.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/nfs_acl.ko:system/lib/modules/nfs_acl.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/nfsd.ko:system/lib/modules/nfsd.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/nfs.ko:system/lib/modules/nfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/ntfs.ko:system/lib/modules/ntfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/ramzswap.ko:system/lib/modules/ramzswap.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/reiserfs.ko:system/lib/modules/reiserfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/squashfs.ko:system/lib/modules/squashfs.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/sunrpc.ko:system/lib/modules/sunrpc.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
#	device/cvpcs/prebuilt/sholes/kernels/$(kern_sholes_oc)/xfs.ko:system/lib/modules/xfs.ko

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
	hdpi

################# DEVICE SPECIFIC STUFF #####################
#
# Below are some things that make sure that sapphire runs
# properly on sholes (droid) hardware
#

DEVICE_PACKAGE_OVERLAYS := device/cvpcs/sholes/overlay

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.google.clientidbase=android-verizon \
	ro.com.google.locationfeatures=1 \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
	ro.config.vc_call_vol_steps=7 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=3000 \
	ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=A855 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y
