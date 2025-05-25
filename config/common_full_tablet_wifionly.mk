TARGET_HAS_WIFIONLY := true
WITH_GMS_COMMS_SUITE := false

# Inherit mobile full common stuff
$(call inherit-product, vendor/xdroid/config/common_mobile_full.mk)

# Inherit tablet common stuff
$(call inherit-product, vendor/xdroid/config/tablet.mk)

$(call inherit-product, vendor/xdroid/config/wifionly.mk)
