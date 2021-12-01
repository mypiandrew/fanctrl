#!/bin/bash

if [[ "$1" == "full" ]]
then

        i2cset -y 1 0x2f 0x30 0xff
        exit 1
fi

if [[ "$1" == "low" ]]
then

        i2cset -y 1 0x2f 0x30 0xe5
        exit 1
fi

if [[ "$1" == "off" ]]
then

        i2cset -y 1 0x2f 0x30 0x00
        exit 0
fi

if [[ "$1" == "rpm" ]]
then
        UPPER=`i2cget -y 1 0x2f 0x3e`
        LOWER=`i2cget -y 1 0x2f 0x3f`

        COMBINED=$(( $((UPPER<<5)) | $((LOWER>>3)) ))

        RPM=$((8190 - $COMBINED ))
        echo "RPM=${RPM}"
        exit 0
fi

echo
echo "$0 - Pi Fan Control"
echo
echo " Options :"
echo
echo "$0 full  = Switch fan to full speed"
echo "$0 low   = Switch fan to low speed"
echo "$0 off   = Switch fan OFF"
echo "$0 rpm   = Get fan RPM"
echo
