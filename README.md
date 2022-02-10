# Zigbee

This repository contains multiple projects relating to the OpenThread wireless protocol.

- thread_sensor_cc2652
- hardware

---

## thread_sensor_cc2652

The sensor design is based on the Texas Instruments cc2652, with the hardware is identical to the Zigbee sensor design in: https://github.com/blkburn/zigbee/tree/main/hardware/zed_v1  
With the sensor controller code in:
https://github.com/blkburn/zigbee/tree/main/sensor_controller

This is a Thread Sleepy End Device based on the Texas Instruments CC2652R1. It supports the following sensors (with build switches):

- AHT10 Temperature and Humidity Sensor
- PIR Movement Sensor
- Reed Switch (Door opening sensor)
- Mains Energy Monitor (split coil current transformer)

The Sensor Controller handles all the sensor communications, while the main process handles the Thread/CoAP stack and a custom task is used to process sensor reading and construct CoAP messages.

Master branch is currently built with:

- CCStudio version: 11.1.0.00011
- SDK: simplelink_cc13x2_26x2_sdk_5_20_00_52

---

## Hardware

KiCad schematic and PCB designs. Both boards have be manufactured, tested, and working.

### Thread Border Router

Based on the nrf52840 module from Minew (MS88SF23). It is a daughter board for the Orange Pi Zero 2 (http://www.orangepi.org/Orange%20Pi%20Zero2/). The Orange Pi uses an Allwinner H616 processor and comfortably runs Ubuntu or Debian Linux (plus much cheaper than a Raspberry Pi 4).

## todo: description of compiling the border router software. Requires Ubuntu.
