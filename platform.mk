LOCAL_PATH := device/sony/yoshino

-include $(LOCAL_PATH)/system_prop.mk

### PLATFORM INIT
PRODUCT_PACKAGES += \
    fstab.yoshino \
    init.yoshino.pwr
