$(call inherit-product, device/cvpcs/sholes/cvpcs_core.mk)

PRODUCT_NAME := cvpcs_generic
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := sholes

PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    CarHome \
    DeskClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery3D \
    Launcher2 \
    Mms \
    Music \
    Provision \
    Protips \
    QuickSearchBox \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider
# The below were removed from the list above
#    LatinIME \
