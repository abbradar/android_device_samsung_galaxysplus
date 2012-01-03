#!/bin/bash

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

DIRS=(
bin
firmware
lib
lib/egl
lib/hw
etc/wifi
cameradata
media
)

for DIR in ${DIRS[@]}; do
	mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$DIR
done

FILES=(
# misc
bin/rmt_storage

# gps
lib/hw/gps.msm7k.so
etc/gps.conf
bin/gpsd

# bluetooth
bin/btld
bin/hciattach
etc/init.qcom.bt.sh

# radio
#bin/rild
#lib/libril.so
#lib/libsecril-client.so
#lib/modules/libra.ko
#lib/modules/librasdioif.ko
#lib/modules/WCN1314_rf.ko
#lib/modules/WCN1314_rf_ftm.ko
lib/libsec-ril.so
bin/qmuxd
# NPS-specific
bin/drexe
bin/npsmobex
bin/cnd
bin/netmgrd
bin/ds_fmc_appd

#wifi
etc/wifi/bcm4329_aps.bin
etc/wifi/bcm4329_mfg.bin
etc/wifi/bcm4329_sta.bin
etc/wifi/dhd.ko
etc/wifi/nvram_net.txt
bin/mfgloader
bin/macloader
etc/init.qcom.wifi.sh

#video
lib/libgsl.so
#lib/libgsdi_exp.so
#lib/libgstk_exp.so
lib/hw/gralloc.msm7k.so
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so

# audio
lib/libaudioalsa.so
lib/libaudioeq.so
lib/libgemini.so

# sensors
#lib/libsensor_yamaha_test.so
#lib/libsensorservice.so
bin/orientationd
bin/geomagneticd
lib/hw/sensors.GT-I9001.so
lib/hw/sensors.default.so

# generic qcom libs
#lib/libping_mdm.so
#lib/liboncrpc.so
#lib/libdsm.so
#lib/libqueue.so
#lib/libdiag.so
#lib/libauth.so
#lib/libcm.so
#lib/libmmgsdilib.so
#lib/libnv.so
#lib/libpbmlib.so
#lib/libpdsm_atl.so
#lib/libwms.so
#lib/libpdapi.so
#lib/liboem_rapi.so
#lib/libqmi.so
#lib/libqmiservices.so
#lib/libidl.so
#lib/libdsutils.so
#lib/libnetmgr.so

## camera
#lib/libActionShot.so
#lib/libarccamera.so
#lib/libcamera_client.so
#lib/libcamerafirmwarejni.so
#lib/libcameraservice.so
#lib/libCaMotion.so
#lib/libcaps.so
#lib/libPanoraMax1.so
#lib/libPlusMe.so
#lib/libs3cjpeg.so
#lib/libseccamera.so
#lib/libcamera.so
lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so
#lib/libseccameraadaptor.so
#lib/libsecjpegencoder.so
#cameradata/datapattern_420sp.yuv
#cameradata/datapattern_front_420sp.yuv

# tvout
lib/libtvout.so
lib/libtvout_jni.so
lib/lib_tvoutengine.so
lib/libtvoutservice.so
bin/tvoutserver
bin/hdmid

# charging mode
bin/battery_charging
#bin/charging_mode
#bin/playlpm
#lib/libQmageDecoder.so
#media/battery_charging_10.qmg
#media/battery_charging_100.qmg
#media/battery_charging_15.qmg
#media/battery_charging_20.qmg
#media/battery_charging_25.qmg
#media/battery_charging_30.qmg
#media/battery_charging_35.qmg
#media/battery_charging_40.qmg
#media/battery_charging_45.qmg
#media/battery_charging_5.qmg
#media/battery_charging_50.qmg
#media/battery_charging_55.qmg
#media/battery_charging_60.qmg
#media/battery_charging_65.qmg
#media/battery_charging_70.qmg
#media/battery_charging_75.qmg
#media/battery_charging_80.qmg
#media/battery_charging_85.qmg
#media/battery_charging_90.qmg
#media/battery_charging_95.qmg
#edia/chargingwarning.qmg
#media/Disconnected.qmg
)

OBJECTS=(
lib/libaudioalsa.so
)

chmod -R a+x ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/*

for i in ${FILES[@]}; do
    echo $i
#    adb pull "system/$i" "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i" #2> /dev/null
    cp ~/android/i9001/original/mount/$i "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i"
done

vendor_blobs=../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk

(cat << EOF) > $vendor_blobs
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

PRODUCT_COPY_FILES += \\
EOF

for i in ${OBJECTS[@]}; do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/$i:obj/$i \\" >> $vendor_blobs
done

for i in ${FILES[@]}; do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/$i:system/$i \\" >> $vendor_blobs
done

./setup-makefiles.sh

