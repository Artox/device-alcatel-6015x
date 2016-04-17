$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_COPY_FILES := \
    device/qcom/msm8610/audio_policy.conf:system/etc/audio_policy.conf \
    device/qcom/msm8610/media/media_codecs_8610.xml:system/etc/media_codecs.xml \
    device/qcom/msm8610/media/media_profiles_8610.xml:system/etc/media_profiles.xml \
    device/qcom/msm8610/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/qcom/msm8610/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/qcom/msm8610/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf \
    system/bluetooth/data/input.conf:system/etc/bluetooth/input.conf \
    system/bluetooth/data/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    system/bluetooth/data/network.conf:system/etc/bluetooth/network.conf \
    system/bluetooth/data/audio.conf:system/etc/bluetooth/audio.conf \
    system/bluetooth/data/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    device/alcatel/6015x/fstab.qcom:root/fstab.qcom \
    device/alcatel/6015x/init.target.rc:root/init.target.rc \

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/alcatel/6015x/flame-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
  persist.radio.multisim.config=dsds \
  ro.moz.devinputjack=1 \
  ro.moz.ril.0.network_types=gsm,wcdma \
  ro.moz.ril.1.network_types=gsm \
  ro.moz.ril.emergency_by_default=true \
  ro.moz.ril.numclients=2 \
  ro.moz.ril.subscription_control=true \
  org.bluez.device.conn.type=array \

PRODUCT_PACKAGES += \
  librecovery

GAIA_DEV_PIXELS_PER_PX := 1.5

PRODUCT_NAME := full_6015x
PRODUCT_DEVICE := 6015x
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := alcatel
PRODUCT_MODEL := Onetouch Fire E
