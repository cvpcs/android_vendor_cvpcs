# modified generic config

$(call inherit-product, vendor/cvpcs/products/cvpcs_core.mk)

PRODUCT_NAME := cvpcs_generic
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE :=

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
    Protips \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider
# The below were removed from the list above
#    Provision \
#    LatinIME \
#    QuickSearchBox \

# end of modified generic config
