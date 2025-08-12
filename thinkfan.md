# Thinkfan setup
Note: I configured this thinkfan setup for my old Thinkpad w520 on Ubuntu 17.10.


## 1. Install necessary programs 

Install `lm-sensors` and `thinkfan`.

````
sudo apt-get install lm-sensors thinkfan
````

## 2. Enable the kernel option for fan control

Linux Kernel includes a thinkpad_acpi module for supporting ThinkPad laptops. It supports fan control operations, but disabled by default due to safety reasons.

1. To enable this fan control feature, open terminal (Ctrl+Alt+T) and run command to create a config file under /etc/modprobe.d/ directory:

``sudo nano /etc/modprobe.d/thinkpad_acpi.conf``


2. When file opens, simply add the line below:

``options thinkpad_acpi fan_control=1``


3. To apply the change, just run command below to remove the kernel module, then re-load it:

``sudo modprobe -r thinkpad_acpi && sudo modprobe thinkpad_acpi``

4. To verify, use command:

``systool -v -m thinkpad_acpi``

Run ``sudo apt install sysfsutils`` to install the tool if command not found. In the terminal output, the “fan_control” parameter equals to “Y” means the feature is enabled.

## 3. Testing if fan can be set manually after kernel module option

let's try to set fan speed manually:

set the maximum regulated speed with level 7:

``echo level 7 | sudo tee /proc/acpi/ibm/fan``

The default is level auto, which can be set via command:

``echo level auto | sudo tee /proc/acpi/ibm/fan``


## 4. Setup configuration

Find the temperature control devices with 

NOTE: use tool like system profiler to ensure correct input is used.. for my Thinkpad P14s gen 1 `hwmon /sys/devices/platform/thinkpad_hwmon/hwmon/hwmon4/temp1_input` was sufficient. 

NOTE 2: After a reboot the input paths changed for me, however this happened only once.. make sure to test after a reboot (`thinkpad -n` or thinkfan UI)

````
find /sys/devices -type f -name "temp*_input"
````



Add them to `/etc/thinkfan.conf`, including (level, min_temperature, max_temperature):

Note make sure to first add `tp_fan /proc/acpi/ibm/fan` on top:

```
tp_fan /proc/acpi/ibm/fan

hwmon /sys/devices/platform/thinkpad_hwmon/hwmon/hwmon4/temp1_input

(0, 0,  50)
(1, 50, 55)
(2, 55, 60)
(3, 60, 65)
(4, 65, 70)
(5, 70, 75)
(6, 75, 80)
(7, 80, 32767)


```

## 5. Testing thinkfan

To test thinkfan, use:

```
thinkfan -n
```


## 6. Running on startup

 We need to enable the `thinkfan`, `thinkfan-sleep`, `thinkfan-wakeup` and  service via `systemctl`.

```
sudo systemctl enable thinkfan.service thinkfan-sleep.service thinkfan-wakeup.service
```
IMPORTANT: don't forget to change biasing factor otherwise fans switch pretty often. E.g `sudo thinkfan -b -10 -v -n -c /etc/thinkfan.conf`
