#!/bin/bash

echo "Enter filename or path: "
read FWFILE

PANGU=$(grep 'Smart Band 6' $FWFILE)
KONGMING=$(grep 'Smart Band 5' $FWFILE)
CINCO=$(grep 'Smart Band 4' $FWFILE)
CINCO_L=$(grep 'Smart Band 4 NFC' $FWFILE)
BAND=$(grep 'Xiaomi Band 3' $FWFILE)
BANDTWO=$(grep 'MI Band 2' $FWFILE)
BANDHRX=$(grep 'Mi Band HRX' $FWFILE)

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

fwheader_band2()
{
	FW_VER=$(tail -c +153074 $FWFILE | head -c 9)
	echo Firmware Version: $FW_VER
}

fwheader_bandHRX()
{
	FW_VER=$(tail -c +145056 $FWFILE | head -c 9)
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
	if ("$CINCO_L" == "Binary file $FWFILE matches")
	then
		echo Device: Mi band 4 NFC
	else
		echo Device: Mi Band 4
	fwheader
elif [ "$BAND" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 3
	fwheader_band3
elif [ "$BANDTWO" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band 2
	fwheader_band2
elif [ "$BANDHRX" == "Binary file $FWFILE matches" ]
then
	echo Device: Mi Band HRX
	fwheader_bandHRX
fi
