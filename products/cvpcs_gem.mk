# basic base setting for all GEM builds

$(call inherit-product, vendor/cvpcs/products/cvpcs_generic.mk)

PRODUCT_NAME := cvpcs_gem
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE :=

# include hdpi packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpapers \
    VoiceDialer \
    libRS \
    librs_jni

# include gem-specific packages
PRODUCT_PACKAGES += \
    ADWLauncher \
    CytownPhone \
    DSPManager \
    EliotStockerMusic \
    GEMSettings

# include superuser
PRODUCT_PACKAGES += \
    Superuser

# common gem files
PRODUCT_COPY_FILES += \
    vendor/cvpcs/CHANGELOG:system/etc/CHANGELOG-GEM \
    vendor/cvpcs/prebuilt/common/system/bin/sysinit.gem:system/bin/sysinit.gem \
    vendor/cvpcs/prebuilt/common/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/00_banner:system/etc/init.d/00_banner \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/01_cpufreq:system/etc/init.d/01_cpufreq \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/10_sysrw:system/etc/init.d/10_sysrw \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/11_depmod:system/etc/init.d/11_depmod \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/19_sysro:system/etc/init.d/19_sysro \
    vendor/cvpcs/prebuilt/common/system/etc/init.d/98_cron:system/etc/init.d/98_cron \
    vendor/cvpcs/prebuilt/common/system/etc/init.gem.rc:system/etc/init.gem.rc \
    vendor/cvpcs/prebuilt/common/system/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/cvpcs/prebuilt/common/system/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/cvpcs/prebuilt/common/system/media/audio/ringtones/Hana_Maru_Caramell.ogg:system/media/audio/ringtones/Hana_Maru_Caramell.ogg \
    vendor/cvpcs/prebuilt/common/system/media/audio/notifications/Incoming_Message.ogg:system/media/audio/notifications/Incoming_Message.ogg

# our common settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Incoming_Message.ogg \
    ro.config.ringtone=Hana_Maru_Caramell.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg

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
    zh_TW
