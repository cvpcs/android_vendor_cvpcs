# modified generic config

PRODUCT_PACKAGES := \
    AccountAndSyncSettings \
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
    LatinIME \
    Launcher2 \
    Mms \
    Music \
    Protips \
    Settings \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    SyncProvider
# The below were removed from the list above
#    Provision \
#    QuickSearchBox \

$(call inherit-product, vendor/cvpcs/products/cvpcs_core.mk)

# Overrides
PRODUCT_BRAND := cvpcs
PRODUCT_DEVICE := generic
PRODUCT_NAME := cvpcs_generic

# end of modified generic config
