XDROID_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

XDROID_PLATFORM_VERSION := 15.0

XDROID_VERSION := xdroidOSS_$(XDROID_BUILD)-$(XDROID_PLATFORM_VERSION)-$(XDROID_BUILD_DATE)
XDROID_VERSION_PROP := fifteen

# xdroidOSS Platform Version
PRODUCT_PRODUCT_PROPERTIES += \
    ro.xdroid.build.date=$(BUILD_DATE) \
    ro.xdroid.device=$(XDROID_BUILD) \
    ro.xdroid.fingerprint=$(ROM_FINGERPRINT) \
    ro.xdroid.version=$(XDROID_VERSION)

# Signing
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/xdroid/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/xdroid/signing/keys/releasekey
ifneq ($(TARGET_NO_OEM_UNLOCK),true)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
endif
ifneq (,$(wildcard vendor/xdroid/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/xdroid/signing/keys/otakey.x509.pem
endif
endif
