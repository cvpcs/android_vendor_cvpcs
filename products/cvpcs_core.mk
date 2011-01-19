# modified core config

PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := generic
PRODUCT_NAME := cvpcs_core

# We provide custom sounds
#PRODUCT_PROPERTY_OVERRIDES := \
#    ro.config.notification_sound=OnTheHunt.ogg \
#    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES := \
    bouncycastle \
    com.android.location.provider \
    com.android.location.provider.xml \
    core \
    core-junit \
    create_test_dmtrace \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dvz \
    dx \
    ext \
    framework-res \
    hprof-conv \
    icu.dat \
    jasmin \
    jasmin.jar \
    libcrypto \
    libdex \
    libdvm \
    libexpat \
    libicui18n \
    libicuuc \
    libjavacore \
    libnativehelper \
    libnfc_ndef \
    libsqlite_jni \
    libssl \
    libz \
    sqlite-jdbc \
    Browser \
    Contacts \
    Home \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    DownloadProviderUi \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    DefaultContainerService \
    Bugreport

# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
    PRODUCT_PACKAGES += \
        bouncycastle-hostdex \
        core-hostdex \
        libjavacore-host
endif
# end modified core config
