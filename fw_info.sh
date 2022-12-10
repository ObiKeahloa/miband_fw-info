#!/bin/bash

echo "Enter filename or path: "
read FWFILE

KONGMING=$(grep 'Smart Band 5' $FWFILE)
PANGU=$(grep 'Smart Band 6' $FWFILE)
CINCO=$(grep 'Smart Band 4' $FWFILE)
BAND=$(grep 'Xiaomi Band 3' $FWFILE)

fwheader()
{
        FW_VER=$(tail -c +1552 $FWFILE | head -c 9)
        echo Firmware Version: $FW_VER
}

fwheader_band3()
{
	FW_VER=$(tail -c +520 $FWFILE | head -c 9)
	echo Firmware Version: $FW_VER
}

if [ "$KONGMING" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 5
	fwheader
elif [ "$PANGU" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 6
	fwheader
elif [ "$CINCO" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 4
	fwheader
elif [ "$BAND" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 3
	fwheader_band3
fi
