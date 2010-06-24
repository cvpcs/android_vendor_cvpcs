LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel/zImage
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

#ifeq ($(TARGET_PREBUILT_RECOVERY_KERNEL),)
#TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery_kernel
#endif

#file := $(INSTALLED_RECOVERY_KERNEL_TARGET)
#ALL_PREBUILT += $(file)
#$(file): $(TARGET_PREBUILT_RECOVERY_KERNEL) | $(ACP)
#       $(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.sholes.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.sholes.rc | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE := libmoto_gps.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiopolicy.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcamera.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril_rds.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libnmea.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/CorpCal.apk:system/app/CorpCal.apk \
	$(LOCAL_PATH)/proprietary/kickback.apk:system/app/kickback.apk \
	$(LOCAL_PATH)/proprietary/CameraGoogle.apk:system/app/CameraGoogle.apk \
	$(LOCAL_PATH)/proprietary/Vending.apk:system/app/Vending.apk \
	$(LOCAL_PATH)/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	$(LOCAL_PATH)/proprietary/VoiceSearch.apk:system/app/VoiceSearch.apk \
	$(LOCAL_PATH)/proprietary/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	$(LOCAL_PATH)/proprietary/CarHomeLauncher.apk:system/app/CarHomeLauncher.apk \
	$(LOCAL_PATH)/proprietary/CarHomeGoogle.apk:system/app/CarHomeGoogle.apk \
	$(LOCAL_PATH)/proprietary/MediaUploader.apk:system/app/MediaUploader.apk \
	$(LOCAL_PATH)/proprietary/soundback.apk:system/app/soundback.apk \
	$(LOCAL_PATH)/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk \
	$(LOCAL_PATH)/proprietary/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	$(LOCAL_PATH)/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
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
	$(LOCAL_PATH)/proprietary/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
	$(LOCAL_PATH)/proprietary/SetupWizard.apk:system/app/SetupWizard.apk \
	$(LOCAL_PATH)/proprietary/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	$(LOCAL_PATH)/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk \
	$(LOCAL_PATH)/proprietary/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
	$(LOCAL_PATH)/proprietary/Maps.apk:system/app/Maps.apk \
	$(LOCAL_PATH)/proprietary/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
	$(LOCAL_PATH)/proprietary/YouTube.apk:system/app/YouTube.apk \
	$(LOCAL_PATH)/proprietary/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
	$(LOCAL_PATH)/proprietary/GoogleGoggles.apk:system/app/GoogleGoggles.apk \
	$(LOCAL_PATH)/proprietary/Twitter.apk:system/app/Twitter.apk \
	$(LOCAL_PATH)/proprietary/MusicGoogle.apk:system/app/MusicGoogle.apk \
	$(LOCAL_PATH)/proprietary/Facebook.apk:system/app/Facebook.apk \
	$(LOCAL_PATH)/proprietary/EmailGoogle.apk:system/app/EmailGoogle.apk \
	$(LOCAL_PATH)/proprietary/Gallery3DGoogle.apk:system/app/Gallery3DGoogle.apk \
	$(LOCAL_PATH)/proprietary/DeskClockGoogle.apk:system/app/DeskClockGoogle.apk

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
	$(LOCAL_PATH)/proprietary/init.goldfish.sh:system/etc/init.goldfish.sh \
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
