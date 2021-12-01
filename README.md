# fanctrl
CM4 EMC2301 Bash Fan Control Script

For use with CM4 Integrator Board

```
fanctl.sh - Pi Fan Control

Options :

fanctl.sh full  = Switch fan to full speed
fanctl.sh low   = Switch fan to low speed
fanctl.sh off   = Switch fan OFF
fanctl.sh rpm   = Get fan RPM
```

Examples

```
root@raspberrypi:/usr/local/bin# ./fanctl.sh rpm
RPM=0
root@raspberrypi:/usr/local/bin# ./fanctl.sh low
root@raspberrypi:/usr/local/bin# ./fanctl.sh rpm
RPM=5944
root@raspberrypi:/usr/local/bin# ./fanctl.sh full
root@raspberrypi:/usr/local/bin# ./fanctl.sh rpm
RPM=7112
```
