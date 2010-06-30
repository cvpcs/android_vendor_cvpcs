$(call inherit-product, device/cvpcs/sholes/cvpcs_generic.mk)

PRODUCT_NAME := cvpcs_sapphire_sholes
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := \
	BUILD_ID=FRF84B \
	BUILD_DISPLAY_ID=Sapphire-0.7.0-Droid \
	PRODUCT_NAME=voles \
	TARGET_DEVICE=sholes \
	BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2/FRF84B/42477:user/release-keys \
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
	device/cvpcs/prebuilt/sholes/system/app/ChromeToPhone.apk:system/app/ChromeToPhone.apk \
	device/cvpcs/prebuilt/sholes/system/app/IM.apk:system/app/IM.apk \
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
	device/cvpcs/prebuilt/sholes/system/media/audio/notifications/droid.ogg:system/media/audio/notifications/droid.ogg \
	device/cvpcs/prebuilt/sholes/system/media/audio/notifications/Incoming_Message.ogg:system/media/audio/notifications/Incoming_Message.ogg \
	device/cvpcs/prebuilt/sholes/initrd/init.rc:$(TARGET_ROOT_OUT)/root/init.rc

# some standard overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.notification_sound=Incoming_Message.ogg \
	ro.config.ringtone=Hana_Maru_Caramell.ogg \
	ro.modversion=Sapphire-0.7.0-Droid \
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
	ro.telephony.call_ring.delay=1000 \
	ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=A855 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
	device/cvpcs/sholes/proprietary/CorpCal.apk:system/app/CorpCal.apk \
	device/cvpcs/sholes/proprietary/kickback.apk:system/app/kickback.apk \
	device/cvpcs/sholes/proprietary/Vending.apk:system/app/Vending.apk \
	device/cvpcs/sholes/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	device/cvpcs/sholes/proprietary/VoiceSearch.apk:system/app/VoiceSearch.apk \
	device/cvpcs/sholes/proprietary/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	device/cvpcs/sholes/proprietary/MediaUploader.apk:system/app/MediaUploader.apk \
	device/cvpcs/sholes/proprietary/soundback.apk:system/app/soundback.apk \
	device/cvpcs/sholes/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk \
	device/cvpcs/sholes/proprietary/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	device/cvpcs/sholes/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
	device/cvpcs/sholes/proprietary/SholesQuickOffice.apk:system/app/SholesQuickOffice.apk \
	device/cvpcs/sholes/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
	device/cvpcs/sholes/proprietary/VVMStub.apk:system/app/VVMStub.apk \
	device/cvpcs/sholes/proprietary/Street.apk:system/app/Street.apk \
	device/cvpcs/sholes/proprietary/Talk.apk:system/app/Talk.apk \
	device/cvpcs/sholes/proprietary/ProgramMenuSystem.apk:system/app/ProgramMenuSystem.apk \
	device/cvpcs/sholes/proprietary/PhoneConfig.apk:system/app/PhoneConfig.apk \
	device/cvpcs/sholes/proprietary/Gmail.apk:system/app/Gmail.apk \
	device/cvpcs/sholes/proprietary/talkback.apk:system/app/talkback.apk \
	device/cvpcs/sholes/proprietary/com.amazon.mp3.apk:system/app/com.amazon.mp3.apk \
	device/cvpcs/sholes/proprietary/ProgramMenu.apk:system/app/ProgramMenu.apk \
	device/cvpcs/sholes/proprietary/GenieWidget.apk:system/app/GenieWidget.apk \
	device/cvpcs/sholes/proprietary/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
	device/cvpcs/sholes/proprietary/DroidEmailPolicy.apk:system/app/DroidEmailPolicy.apk \
	device/cvpcs/sholes/proprietary/CertInstaller.apk:system/app/CertInstaller.apk \
	device/cvpcs/sholes/proprietary/SetupWizard.apk:system/app/SetupWizard.apk \
	device/cvpcs/sholes/proprietary/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	device/cvpcs/sholes/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk \
	device/cvpcs/sholes/proprietary/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
	device/cvpcs/sholes/proprietary/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
	device/cvpcs/sholes/proprietary/CarHomeLauncher.apk:system/app/CarHomeLauncher.apk \
	device/cvpcs/sholes/proprietary/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
	device/cvpcs/sholes/proprietary/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
	device/cvpcs/sholes/proprietary/YouTube.apk:system/app/YouTube.apk
####################
#	device/cvpcs/sholes/proprietary/Maps.apk:system/app/Maps.apk \
#	device/cvpcs/sholes/proprietary/GoogleGoggles.apk:system/app/GoogleGoggles.apk \
#	device/cvpcs/sholes/proprietary/Twitter.apk:system/app/Twitter.apk \
#	device/cvpcs/sholes/proprietary/MusicGoogle.apk:system/app/MusicGoogle.apk \
#	device/cvpcs/sholes/proprietary/Facebook.apk:system/app/Facebook.apk \
#	device/cvpcs/sholes/proprietary/EmailGoogle.apk:system/app/EmailGoogle.apk \
#	device/cvpcs/sholes/proprietary/Gallery3DGoogle.apk:system/app/Gallery3DGoogle.apk \
#	device/cvpcs/sholes/proprietary/DeskClockGoogle.apk:system/app/DeskClockGoogle.apk
#	device/cvpcs/sholes/proprietary/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
#	device/cvpcs/sholes/proprietary/CameraGoogle.apk:system/app/CameraGoogle.apk \

# modules to include (default)
PRODUCT_COPY_FILES += \
	device/cvpcs/sholes/kernel/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko
#	device/cvpcs/sholes/kernel/ah6.ko:system/lib/modules/ah6.ko \
#	device/cvpcs/sholes/kernel/auth_rpcgss.ko:system/lib/modules/auth_rpcgss.ko \
#	device/cvpcs/sholes/kernel/cifs.ko:system/lib/modules/cifs.ko \
#	device/cvpcs/sholes/kernel/esp6.ko:system/lib/modules/esp6.ko \
#	device/cvpcs/sholes/kernel/fuse.ko:system/lib/modules/fuse.ko \
#	device/cvpcs/sholes/kernel/ip6_tunnel.ko:system/lib/modules/ip6_tunnel.ko \
#	device/cvpcs/sholes/kernel/ipcomp6.ko:system/lib/modules/ipcomp6.ko \
#	device/cvpcs/sholes/kernel/ipv6.ko:system/lib/modules/ipv6.ko \
#	device/cvpcs/sholes/kernel/lockd.ko:system/lib/modules/lockd.ko \
#	device/cvpcs/sholes/kernel/mip6.ko:system/lib/modules/mip6.ko \
#	device/cvpcs/sholes/kernel/nfs_acl.ko:system/lib/modules/nfs_acl.ko \
#	device/cvpcs/sholes/kernel/nfs.ko:system/lib/modules/nfs.ko \
#	device/cvpcs/sholes/kernel/output.ko:system/lib/modules/output.ko \
#	device/cvpcs/sholes/kernel/rpcsec_gss_krb5.ko:system/lib/modules/rpcsec_gss_krb5.ko \
#	device/cvpcs/sholes/kernel/sit.ko:system/lib/modules/sit.ko \
#	device/cvpcs/sholes/kernel/sunrpc.ko:system/lib/modules/sunrpc.ko \
#	device/cvpcs/sholes/kernel/tunnel4.ko:system/lib/modules/tunnel4.ko \
#	device/cvpcs/sholes/kernel/tunnel6.ko:system/lib/modules/tunnel6.ko \
#	device/cvpcs/sholes/kernel/xfrm6_mode_beet.ko:system/lib/modules/xfrm6_mode_beet.ko \
#	device/cvpcs/sholes/kernel/xfrm6_mode_transport.ko:system/lib/modules/xfrm6_mode_transport.ko \
#	device/cvpcs/sholes/kernel/xfrm6_mode_tunnel.ko:system/lib/modules/xfrm6_mode_tunnel.ko \
#	device/cvpcs/sholes/kernel/xfrm6_tunnel.ko:system/lib/modules/xfrm6_tunnel.ko \
#	device/cvpcs/sholes/kernel/xfrm_ipcomp.ko:system/lib/modules/xfrm_ipcomp.ko

PRODUCT_COPY_FILES += \
	device/cvpcs/sholes/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	device/cvpcs/sholes/proprietary/bthelp:system/bin/bthelp \
	device/cvpcs/sholes/proprietary/mdm_panicd:system/bin/mdm_panicd \
	device/cvpcs/sholes/proprietary/SaveBPVer:system/bin/SaveBPVer \
	device/cvpcs/sholes/proprietary/akmd2:system/bin/akmd2 \
	device/cvpcs/sholes/proprietary/battd:system/bin/battd \
	device/cvpcs/sholes/proprietary/chat-ril:system/bin/chat-ril \
	device/cvpcs/sholes/proprietary/tcmd:system/bin/tcmd \
	device/cvpcs/sholes/proprietary/ftmipcd:system/bin/ftmipcd \
	device/cvpcs/sholes/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
	device/cvpcs/sholes/proprietary/ap_gain.bin:system/bin/ap_gain.bin \
	device/cvpcs/sholes/proprietary/pppd-ril:system/bin/pppd-ril \
	device/cvpcs/sholes/proprietary/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
	device/cvpcs/sholes/proprietary/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	device/cvpcs/sholes/proprietary/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
	device/cvpcs/sholes/proprietary/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
	device/cvpcs/sholes/proprietary/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
	device/cvpcs/sholes/proprietary/gps.conf:system/etc/gps.conf \
	device/cvpcs/sholes/proprietary/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
	device/cvpcs/sholes/proprietary/tiwlan.ini:system/etc/wifi/tiwlan.ini \
	device/cvpcs/sholes/proprietary/cacerts.bks:system/etc/security/cacerts.bks \
	device/cvpcs/sholes/proprietary/otacerts.zip:system/etc/security/otacerts.zip \
	device/cvpcs/sholes/proprietary/NOTICE.html.gz:system/etc/NOTICE.html.gz \
	device/cvpcs/sholes/proprietary/pvplayer_mot.cfg:system/etc/pvplayer_mot.cfg \
	device/cvpcs/sholes/proprietary/media_profiles.xml:system/etc/media_profiles.xml \
	device/cvpcs/sholes/proprietary/cameraCalFileDef.bin:system/etc/cameraCalFileDef.bin \
	device/cvpcs/sholes/proprietary/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
	device/cvpcs/sholes/proprietary/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	device/cvpcs/sholes/proprietary/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	device/cvpcs/sholes/proprietary/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	device/cvpcs/sholes/proprietary/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	device/cvpcs/sholes/proprietary/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	device/cvpcs/sholes/proprietary/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	device/cvpcs/sholes/proprietary/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/cvpcs/sholes/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	device/cvpcs/sholes/proprietary/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	device/cvpcs/sholes/proprietary/features.xml:system/etc/permissions/features.xml \
	device/cvpcs/sholes/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	device/cvpcs/sholes/proprietary/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
	device/cvpcs/sholes/proprietary/hosts:system/etc/hosts \
	device/cvpcs/sholes/proprietary/vold.fstab:system/etc/vold.fstab \
	device/cvpcs/sholes/proprietary/key_code_map.txt:system/etc/motorola/12m/key_code_map.txt \
	device/cvpcs/sholes/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \
	device/cvpcs/sholes/proprietary/contributors.css:system/etc/contributors.css \
	device/cvpcs/sholes/proprietary/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	device/cvpcs/sholes/proprietary/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	device/cvpcs/sholes/proprietary/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	device/cvpcs/sholes/proprietary/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	device/cvpcs/sholes/proprietary/usn.dll64P:system/lib/dsp/usn.dll64P \
	device/cvpcs/sholes/proprietary/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	device/cvpcs/sholes/proprietary/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	device/cvpcs/sholes/proprietary/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	device/cvpcs/sholes/proprietary/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	device/cvpcs/sholes/proprietary/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	device/cvpcs/sholes/proprietary/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	device/cvpcs/sholes/proprietary/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	device/cvpcs/sholes/proprietary/baseimage.dof:system/lib/dsp/baseimage.dof \
	device/cvpcs/sholes/proprietary/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	device/cvpcs/sholes/proprietary/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	device/cvpcs/sholes/proprietary/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	device/cvpcs/sholes/proprietary/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	device/cvpcs/sholes/proprietary/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	device/cvpcs/sholes/proprietary/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	device/cvpcs/sholes/proprietary/libbattd.so:system/lib/libbattd.so \
	device/cvpcs/sholes/proprietary/libzxing.so:system/lib/libzxing.so \
	device/cvpcs/sholes/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
	device/cvpcs/sholes/proprietary/zxing.so:system/lib/zxing.so \
	device/cvpcs/sholes/proprietary/libopencore_asflocalreg.so:system/lib/libopencore_asflocalreg.so \
	device/cvpcs/sholes/proprietary/libLCML.so:system/lib/libLCML.so \
	device/cvpcs/sholes/proprietary/libopencore_asflocal.so:system/lib/libopencore_asflocal.so \
	device/cvpcs/sholes/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
	device/cvpcs/sholes/proprietary/libinterstitial.so:system/lib/libinterstitial.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.WMA.decode.so:system/lib/libOMX.TI.WMA.decode.so \
	device/cvpcs/sholes/proprietary/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	device/cvpcs/sholes/proprietary/lights.sholes.so:system/lib/hw/lights.sholes.so \
	device/cvpcs/sholes/proprietary/sensors.sholes.so:system/lib/hw/sensors.sholes.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
	device/cvpcs/sholes/proprietary/libOMX_Core.so:system/lib/libOMX_Core.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.AAC.encode.so:system/lib/libOMX.TI.AAC.encode.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.WBAMR.encode.so:system/lib/libOMX.TI.WBAMR.encode.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \
	device/cvpcs/sholes/proprietary/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
	device/cvpcs/sholes/proprietary/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
	device/cvpcs/sholes/proprietary/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
	device/cvpcs/sholes/proprietary/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
	device/cvpcs/sholes/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.AMR.decode.so:system/lib/libOMX.TI.AMR.decode.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.MP3.decode.so:system/lib/libOMX.TI.MP3.decode.so \
	device/cvpcs/sholes/proprietary/liblvmxipc.so:system/lib/liblvmxipc.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.AAC.decode.so:system/lib/libOMX.TI.AAC.decode.so \
	device/cvpcs/sholes/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
	device/cvpcs/sholes/proprietary/libVendor_ti_omx_config_parser.so:system/lib/libVendor_ti_omx_config_parser.so \
	device/cvpcs/sholes/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \
	device/cvpcs/sholes/proprietary/libmoto_ril.so:system/lib/libmoto_ril.so \
	device/cvpcs/sholes/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	device/cvpcs/sholes/proprietary/libspeech.so:system/lib/libspeech.so \
	device/cvpcs/sholes/proprietary/libVendor_ti_omx.so:system/lib/libVendor_ti_omx.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.AMR.encode.so:system/lib/libOMX.TI.AMR.encode.so \
	device/cvpcs/sholes/proprietary/libHPImgApi.so:system/lib/libHPImgApi.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.Video.encoder.so:system/lib/libOMX.TI.Video.encoder.so \
	device/cvpcs/sholes/proprietary/libOMX.TI.WBAMR.decode.so:system/lib/libOMX.TI.WBAMR.decode.so \
	device/cvpcs/sholes/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
	device/cvpcs/sholes/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
	device/cvpcs/sholes/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
	device/cvpcs/sholes/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
	device/cvpcs/sholes/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
	device/cvpcs/sholes/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
	device/cvpcs/sholes/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
	device/cvpcs/sholes/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
	device/cvpcs/sholes/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
	device/cvpcs/sholes/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
	device/cvpcs/sholes/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
	device/cvpcs/sholes/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin
