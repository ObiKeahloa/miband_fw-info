# Interesting FW finds

## Shared hardware (referenced in FW)
* DA1470x SOC (shared by 5/6/7)
* Cypress TrueTouch (5/6/7)
* AFE4430 Biosensor (6 & 7)
* InvenSense ICM-40608 (6-Axis Motion sensors) (5/6)
* LSM6DSO Accelerometer/Gyrometer (5/6/7)
* BMI260 Gyro/Accelerometer (5 & 6)


## Mi Band 6
* References to kongming (Band 5), shared code?
* Adds "wxcodepay" (New payment api?)
* More refernces to DFU, with more signature checks & file size checks.
* Adds support for SM2 decrypt/encrypt

## Mi Band 7
* References to partition map, 'dave2d_draw_polyline'
* icm42670 instead of icm40608 (MB 5 & 6)
* /mnt/ filesystem, has backup fw, & other resources. (Full list, dumped in mnt-fs_MB7.txt)
