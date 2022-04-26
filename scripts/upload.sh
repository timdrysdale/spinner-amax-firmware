#! /bin/sh

# For use on the raspberry pi hosting the arduino:
# compile, upload, and restart services supporting connection to sessionhost

arduino-cli compile --fqbn arduino:samd:nano_33_iot ../SpinningDiskController/ --libraries ../libraries

arduino-cli upload --port /dev/ttyACM0 --fqbn arduino:samd:nano_33_iot ../SpinningDiskController/

systemctl restart websocat-data

systemctl restart socat-data
