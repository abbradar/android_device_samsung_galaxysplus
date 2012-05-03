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
lib
lib/egl
lib/hw
media
etc
etc/firmware
firmware
cameradata
)

for DIR in ${DIRS[@]}; do
	mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$DIR
done

FILES=(
# misc
bin/rmt_storage

# radio
lib/libsecril-client.so
lib/libsec-ril.so
bin/rild

#video
lib/libgsl.so
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so
etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw
lib/hw/overlay.default.so
lib/liboverlay.so

# sensors
lib/libsensor_yamaha_test.so
bin/orientationd
bin/geomagneticd

# tvout
lib/libtvout.so
lib/libtvout_jni.so
lib/lib_tvoutengine.so
lib/libtvoutservice.so
bin/tvoutserver
bin/hdmid

# audio
lib/libaudioalsa.so

# camera
lib/libC2D2.so
lib/libOpenVG.so
lib/libarccamera.so
lib/libs3cjpeg.so
lib/libcamera.so
lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so
lib/libgemini.so
lib/libcameraservice.so
lib/libcamera_client.so
lib/libcamerafirmwarejni.so
lib/libseccameraadaptor.so
lib/libCaMotion.so
lib/libPanoraMax1.so
lib/libActionShot.so
lib/libcaps.so
lib/libPlusMe.so
lib/libsecjpegencoder.so

# charging mode
bin/charging_mode
bin/playlpm
lib/libQmageDecoder.so
media/battery_charging_10.qmg
media/battery_charging_100.qmg
media/battery_charging_15.qmg
media/battery_charging_20.qmg
media/battery_charging_25.qmg
media/battery_charging_30.qmg
media/battery_charging_35.qmg
media/battery_charging_40.qmg
media/battery_charging_45.qmg
media/battery_charging_5.qmg
media/battery_charging_50.qmg
media/battery_charging_55.qmg
media/battery_charging_60.qmg
media/battery_charging_65.qmg
media/battery_charging_70.qmg
media/battery_charging_75.qmg
media/battery_charging_80.qmg
media/battery_charging_85.qmg
media/battery_charging_90.qmg
media/battery_charging_95.qmg
media/chargingwarning.qmg
media/Disconnected.qmg
media/battery_error.qmg
media/battery_batteryerror.qmg

# some firmware
etc/firmware/vidc_720p_command_control.fw
etc/firmware/vidc_720p_h263_dec_mc.fw
etc/firmware/vidc_720p_h264_dec_mc.fw
etc/firmware/vidc_720p_h264_enc_mc.fw
etc/firmware/vidc_720p_mp4_dec_mc.fw
etc/firmware/vidc_720p_mp4_enc_mc.fw
etc/firmware/vidc_720p_vc1_dec_mc.fw
cameradata/datapattern_420sp.yuv
cameradata/datapattern_front_420sp.yuv
firmware/CE147F00.bin
firmware/CE147F01.bin
firmware/CE147F02.bin
firmware/CE147F03.bin
)

OBJECTS=(
lib/libaudioalsa.so
lib/libcamera.so
)

FILES_FROM=(
bin/BCM4329B1_002.002.023.0746.0000_SS_S1-plus-38_4MHz-TEST-ONLY.hcd
lib/hw/gps.msm7k.so
lib/hw/sensors.GT-I9001.so
lib/hw/gralloc.msm7k.so
)

FILES_TO=(
vendor/firmware/bcm4329.hcd
lib/hw/gps.msm7x30.so
lib/hw/sensors.msm7x30.so
lib/hw/gralloc.msm7x30.so
)

for i in ${FILES[@]}; do
    echo $i
#    adb pull "system/$i" "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i" #2> /dev/null
    cp ~/android/i9001/mount/$i "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i"
done

for i in ${FILES_FROM[@]}; do
    echo $i
#    adb pull "system/$i" "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i" #2> /dev/null
    cp ~/android/i9001/mount/$i "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i"
done

chmod -R a+x ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/*

vendor_blobs=../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk

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

for (( i=0; i < ${#FILES_TO[@]}; i++ )); do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/${FILES_FROM[$i]}:system/${FILES_TO[$i]} \\" >> $vendor_blobs
done

./setup-makefiles.sh
