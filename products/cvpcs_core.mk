PRODUCT_NAME := cvpcs_core
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE :=

PRODUCT_POLICY := android.policy_phone

# The below were removed from the list above
#
#PRODUCT_PROPERTY_OVERRIDES := \
#    ro.config.notification_sound=OnTheHunt.ogg \
#    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES := \
    framework-res \
    Browser \
    CarHomeLauncher \
    Contacts \
    Home \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
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

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true   \
    media.stagefright.enable-scan=true   \
    media.stagefright.enable-http=true
