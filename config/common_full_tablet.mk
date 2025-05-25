# Inherit mobile full common stuff
$(call inherit-product, vendor/xdroid/config/common_mobile_full.mk)

# Inherit tablet common stuff
$(call inherit-product, vendor/xdroid/config/tablet.mk)

$(call inherit-product, vendor/xdroid/config/telephony.mk)
