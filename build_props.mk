# Common ROM version
ROM_VERSION_STABLE = 000
ROM_VERSION_BETA = 000
ROM_VERSION_ALPHA = 004
ROM_VERSION_EXP = 001
ROM_VERSION_MINOR = 001

BUILD_VERSION = $(ROM_VERSION_STABLE)$(ROM_VERSION_BETA)$(ROM_VERSION_ALPHA)$(ROM_VERSION_EXP)$(ROM_VERSION_MINOR)

# General
PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.user=kemonine \
    ro.build.host=epidemic \
	ro.developerid=kemonine \
	ro.modversion=$(BUILD_VERSION)

# Goo.im
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.developerid=kemonine \
	ro.goo.board=apache \
	ro.goo.rom=CyanogenMod10 \
	ro.goo.version=$(BUILD_VERSION)

# Rom Manager
PRODUCT_PROPERTY_OVERRIDES += \
	ro.rommanager.developerid=kemonine

