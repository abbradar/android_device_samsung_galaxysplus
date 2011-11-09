#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=galaxysplus
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

# galaxysplus
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/gpsd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
#mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/modules
#adb pull /system/lib/modules/libra.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/modules
#adb pull /system/lib/modules/librasdioif.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/modules
#adb pull /system/lib/modules/WCN1314_rf.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/modules
#adb pull /system/lib/modules/WCN1314_rf_ftm.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/modules
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/firmware
#adb pull /system/etc/wifi/bcm4329_aps.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/firmware
#adb pull /system/etc/wifi/bcm4329_mfg.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/firmware
#adb pull /system/etc/wifi/bcm4329_sta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/firmware
adb pull /system/etc/wifi/nvram_net.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/firmware

# ariesve
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/btld ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/ip ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/tc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
#adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libping_mdm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpdsm_atl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpdapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmiservices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsensor_yamaha_test.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsensorservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/orientationd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/geomagneticd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libActionShot.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamerafirmwarejni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libCaMotion.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libPanoraMax1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libPlusMe.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libs3cjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsecjpegencoder.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libtvout.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
#adb pull /system/lib/libtvout_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/lib_tvoutengine.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libtvoutservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/tvoutserver ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
adb pull /system/cameradata/datapattern_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
adb pull /system/cameradata/datapattern_front_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/firmware/CE147F00.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/firmware/CE147F01.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/firmware/CE147F02.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
adb pull /system/firmware/CE147F03.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/charging_mode
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/playlpm
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libQmageDecoder.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_10.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_100.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_15.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_20.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_25.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_30.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_35.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_40.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_45.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_5.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_50.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_55.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_60.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_65.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_70.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_75.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_80.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_85.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_90.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_95.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/chargingwarning.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/Disconnected.qmg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media

chmod -R a+x ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/*

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,\
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:obj/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsecril-client.so:obj/lib/libsecril-client.so

# galaxysplus
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/gps.conf:system/etc/gps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/gpsd:system/bin/gpsd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libsamsungcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/firmware/nvram_net.txt:system/lib/firmware/nvram_net.txt

# ariesve
PRODUCT_COPY_FILES += \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/btld:system/bin/btld \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/ip:system/bin/ip \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    #vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/tc:system/bin/tc \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsensorservice.so:system/lib/libsensorservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/orientationd:system/bin/orientationd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/geomagneticd:system/bin/geomagneticd

# camera and tvout
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libActionShot.so:system/lib/libActionShot.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libarccamera.so:system/lib/libarccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libCaMotion.so:system/lib/libCaMotion.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcaps.so:system/lib/libcaps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libPanoraMax1.so:system/lib/libPanoraMax1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libPlusMe.so:system/lib/libPlusMe.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccamera.so:system/lib/libseccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsecjpegencoder.so:system/lib/libsecjpegencoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libtvout.so:system/lib/libtvout.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/lib_tvoutengine.so:system/lib/lib_tvoutengine.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libtvoutservice.so:system/lib/libtvoutservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/tvoutserver:system/bin/tvoutserver \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F00.bin:system/firmware/CE147F00.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F01.bin:system/firmware/CE147F01.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F02.bin:system/firmware/CE147F02.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/firmware/CE147F03.bin:system/firmware/CE147F03.bin

# low power mode
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/charging_mode:system/bin/charging_mode \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/playlpm:system/bin/playlpm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/Disconnected.qmg:system/media/Disconnected.qmg
EOF

./setup-makefiles.sh

