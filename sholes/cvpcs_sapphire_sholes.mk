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
	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.1-update1/ESE81/29593:user/release-keys \
	PRODUCT_BRAND=verizon

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

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/CorpCal.apk:system/app/CorpCal.apk \
	$(LOCAL_PATH)/proprietary/kickback.apk:system/app/kickback.apk \
	$(LOCAL_PATH)/proprietary/Vending.apk:system/app/Vending.apk \
	$(LOCAL_PATH)/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	$(LOCAL_PATH)/proprietary/VoiceSearch.apk:system/app/VoiceSearch.apk \
	$(LOCAL_PATH)/proprietary/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	$(LOCAL_PATH)/proprietary/CarHomeLauncher.apk:system/app/CarHomeLauncher.apk \
	$(LOCAL_PATH)/proprietary/MediaUploader.apk:system/app/MediaUploader.apk \
	$(LOCAL_PATH)/proprietary/soundback.apk:system/app/soundback.apk \
	$(LOCAL_PATH)/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk \
	$(LOCAL_PATH)/proprietary/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	$(LOCAL_PATH)/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
	$(LOCAL_PATH)/proprietary/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
	$(LOCAL_PATH)/proprietary/SholesQuickOffice.apk:system/app/SholesQuickOffice.apk \
	$(LOCAL_PATH)/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
	$(LOCAL_PATH)/proprietary/VVMStub.apk:system/app/VVMStub.apk \
	$(LOCAL_PATH)/proprietary/Street.apk:system/app/Street.apk \
	$(LOCAL_PATH)/proprietary/Talk.apk:system/app/Talk.apk \
	$(LOCAL_PATH)/proprietary/ProgramMenuSystem.apk:system/app/ProgramMenuSystem.apk \
	$(LOCAL_PATH)/proprietary/PhoneConfig.apk:system/app/PhoneConfig.apk \
	$(LOCAL_PATH)/proprietary/Gmail.apk:system/app/Gmail.apk \
	$(LOCAL_PATH)/proprietary/talkback.apk:system/app/talkback.apk \
	$(LOCAL_PATH)/proprietary/com.amazon.mp3.apk:system/app/com.amazon.mp3.apk \
	$(LOCAL_PATH)/proprietary/ProgramMenu.apk:system/app/ProgramMenu.apk \
	$(LOCAL_PATH)/proprietary/GenieWidget.apk:system/app/GenieWidget.apk \
	$(LOCAL_PATH)/proprietary/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
	$(LOCAL_PATH)/proprietary/DroidEmailPolicy.apk:system/app/DroidEmailPolicy.apk \
	$(LOCAL_PATH)/proprietary/CertInstaller.apk:system/app/CertInstaller.apk \
	$(LOCAL_PATH)/proprietary/SetupWizard.apk:system/app/SetupWizard.apk \
	$(LOCAL_PATH)/proprietary/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	$(LOCAL_PATH)/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk \
	$(LOCAL_PATH)/proprietary/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
	$(LOCAL_PATH)/proprietary/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
	$(LOCAL_PATH)/proprietary/YouTube.apk:system/app/YouTube.apk
####################
#	$(LOCAL_PATH)/proprietary/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
#	$(LOCAL_PATH)/proprietary/Maps.apk:system/app/Maps.apk \
#	$(LOCAL_PATH)/proprietary/GoogleGoggles.apk:system/app/GoogleGoggles.apk \
#	$(LOCAL_PATH)/proprietary/Twitter.apk:system/app/Twitter.apk \
#	$(LOCAL_PATH)/proprietary/MusicGoogle.apk:system/app/MusicGoogle.apk \
#	$(LOCAL_PATH)/proprietary/Facebook.apk:system/app/Facebook.apk \
#	$(LOCAL_PATH)/proprietary/EmailGoogle.apk:system/app/EmailGoogle.apk \
#	$(LOCAL_PATH)/proprietary/Gallery3DGoogle.apk:system/app/Gallery3DGoogle.apk \
#	$(LOCAL_PATH)/proprietary/DeskClockGoogle.apk:system/app/DeskClockGoogle.apk
#	$(LOCAL_PATH)/proprietary/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
#	$(LOCAL_PATH)/proprietary/CameraGoogle.apk:system/app/CameraGoogle.apk \

# modules to include (default)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel/act_mirred.ko:system/lib/modules/act_mirred.ko \
	$(LOCAL_PATH)/kernel/act_police.ko:system/lib/modules/act_police.ko \
	$(LOCAL_PATH)/kernel/cls_u32.ko:system/lib/modules/cls_u32.ko \
	$(LOCAL_PATH)/kernel/em_u32.ko:system/lib/modules/em_u32.ko \
	$(LOCAL_PATH)/kernel/ifb.ko:system/lib/modules/ifb.ko \
	$(LOCAL_PATH)/kernel/sch_htb.ko:system/lib/modules/sch_htb.ko \
	$(LOCAL_PATH)/kernel/sch_ingress.ko:system/lib/modules/sch_ingress.ko \
	$(LOCAL_PATH)/kernel/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
	$(LOCAL_PATH)/kernel/wl127x_test.ko:system/lib/modules/wl127x_test.ko

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	$(LOCAL_PATH)/proprietary/bthelp:system/bin/bthelp \
	$(LOCAL_PATH)/proprietary/mdm_panicd:system/bin/mdm_panicd \
	$(LOCAL_PATH)/proprietary/SaveBPVer:system/bin/SaveBPVer \
	$(LOCAL_PATH)/proprietary/akmd2:system/bin/akmd2 \
	$(LOCAL_PATH)/proprietary/battd:system/bin/battd \
	$(LOCAL_PATH)/proprietary/chat-ril:system/bin/chat-ril \
	$(LOCAL_PATH)/proprietary/tcmd:system/bin/tcmd \
	$(LOCAL_PATH)/proprietary/ftmipcd:system/bin/ftmipcd \
	$(LOCAL_PATH)/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
	$(LOCAL_PATH)/proprietary/ap_gain.bin:system/bin/ap_gain.bin \
	$(LOCAL_PATH)/proprietary/pppd-ril:system/bin/pppd-ril \
	$(LOCAL_PATH)/proprietary/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
	$(LOCAL_PATH)/proprietary/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	$(LOCAL_PATH)/proprietary/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
	$(LOCAL_PATH)/proprietary/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
	$(LOCAL_PATH)/proprietary/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
	$(LOCAL_PATH)/proprietary/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/proprietary/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
	$(LOCAL_PATH)/proprietary/tiwlan.ini.diff:system/etc/wifi/tiwlan.ini.diff \
	$(LOCAL_PATH)/proprietary/cacerts.bks:system/etc/security/cacerts.bks \
	$(LOCAL_PATH)/proprietary/otacerts.zip:system/etc/security/otacerts.zip \
	$(LOCAL_PATH)/proprietary/NOTICE.html.gz:system/etc/NOTICE.html.gz \
	$(LOCAL_PATH)/proprietary/pvplayer_mot.cfg:system/etc/pvplayer_mot.cfg \
	$(LOCAL_PATH)/proprietary/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/proprietary/cameraCalFileDef.bin:system/etc/cameraCalFileDef.bin \
	$(LOCAL_PATH)/proprietary/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	$(LOCAL_PATH)/proprietary/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	$(LOCAL_PATH)/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	$(LOCAL_PATH)/proprietary/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	$(LOCAL_PATH)/proprietary/features.xml:system/etc/permissions/features.xml \
	$(LOCAL_PATH)/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	$(LOCAL_PATH)/proprietary/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
	$(LOCAL_PATH)/proprietary/hosts:system/etc/hosts \
	$(LOCAL_PATH)/proprietary/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/proprietary/key_code_map.txt:system/etc/motorola/12m/key_code_map.txt \
	$(LOCAL_PATH)/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \
	$(LOCAL_PATH)/proprietary/contributors.css:system/etc/contributors.css \
	$(LOCAL_PATH)/proprietary/event-log-tags.diff:system/etc/event-log-tags.diff \
	$(LOCAL_PATH)/proprietary/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	$(LOCAL_PATH)/proprietary/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/usn.dll64P:system/lib/dsp/usn.dll64P \
	$(LOCAL_PATH)/proprietary/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/baseimage.dof:system/lib/dsp/baseimage.dof \
	$(LOCAL_PATH)/proprietary/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	$(LOCAL_PATH)/proprietary/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	$(LOCAL_PATH)/proprietary/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	$(LOCAL_PATH)/proprietary/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	$(LOCAL_PATH)/proprietary/libbattd.so:system/lib/libbattd.so \
	$(LOCAL_PATH)/proprietary/libzxing.so:system/lib/libzxing.so \
	$(LOCAL_PATH)/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
	$(LOCAL_PATH)/proprietary/zxing.so:system/lib/zxing.so \
	$(LOCAL_PATH)/proprietary/libopencore_asflocalreg.so:system/lib/libopencore_asflocalreg.so \
	$(LOCAL_PATH)/proprietary/libLCML.so:system/lib/libLCML.so \
	$(LOCAL_PATH)/proprietary/libopencore_asflocal.so:system/lib/libopencore_asflocal.so \
	$(LOCAL_PATH)/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
	$(LOCAL_PATH)/proprietary/libinterstitial.so:system/lib/libinterstitial.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.WMA.decode.so:system/lib/libOMX.TI.WMA.decode.so \
	$(LOCAL_PATH)/proprietary/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	$(LOCAL_PATH)/proprietary/lights.sholes.so:system/lib/hw/lights.sholes.so \
	$(LOCAL_PATH)/proprietary/sensors.sholes.so:system/lib/hw/sensors.sholes.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
	$(LOCAL_PATH)/proprietary/libOMX_Core.so:system/lib/libOMX_Core.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.AAC.encode.so:system/lib/libOMX.TI.AAC.encode.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.WBAMR.encode.so:system/lib/libOMX.TI.WBAMR.encode.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \
	$(LOCAL_PATH)/proprietary/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
	$(LOCAL_PATH)/proprietary/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
	$(LOCAL_PATH)/proprietary/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
	$(LOCAL_PATH)/proprietary/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
	$(LOCAL_PATH)/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.AMR.decode.so:system/lib/libOMX.TI.AMR.decode.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.MP3.decode.so:system/lib/libOMX.TI.MP3.decode.so \
	$(LOCAL_PATH)/proprietary/liblvmxipc.so:system/lib/liblvmxipc.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.AAC.decode.so:system/lib/libOMX.TI.AAC.decode.so \
	$(LOCAL_PATH)/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
	$(LOCAL_PATH)/proprietary/libVendor_ti_omx_config_parser.so:system/lib/libVendor_ti_omx_config_parser.so \
	$(LOCAL_PATH)/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \
	$(LOCAL_PATH)/proprietary/libmoto_ril.so:system/lib/libmoto_ril.so \
	$(LOCAL_PATH)/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	$(LOCAL_PATH)/proprietary/libspeech.so:system/lib/libspeech.so \
	$(LOCAL_PATH)/proprietary/libVendor_ti_omx.so:system/lib/libVendor_ti_omx.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.AMR.encode.so:system/lib/libOMX.TI.AMR.encode.so \
	$(LOCAL_PATH)/proprietary/libHPImgApi.so:system/lib/libHPImgApi.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.Video.encoder.so:system/lib/libOMX.TI.Video.encoder.so \
	$(LOCAL_PATH)/proprietary/libOMX.TI.WBAMR.decode.so:system/lib/libOMX.TI.WBAMR.decode.so \
	$(LOCAL_PATH)/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
	$(LOCAL_PATH)/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
	$(LOCAL_PATH)/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
	$(LOCAL_PATH)/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
	$(LOCAL_PATH)/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
	$(LOCAL_PATH)/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
	$(LOCAL_PATH)/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
	$(LOCAL_PATH)/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
	$(LOCAL_PATH)/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
	$(LOCAL_PATH)/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
	$(LOCAL_PATH)/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
	$(LOCAL_PATH)/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin
