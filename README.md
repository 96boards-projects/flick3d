# Flick3D

This is c++ language source library for Flick3D boards.

> Based on: https://github.com/PiSupply/Flick/tree/master/firmware/libcpp

***

## Table of Contents

- [1) Hardware](#1-hardware)
   - [1.1) Hardware Requirements](#11-hardware-requirements)
   - [1.2) Hardware Setup](#11-hardware-setup)
- [2) Software](#2-software)
   - [2.1) Setup MRAA](#21-setup-mraa)
   - [2.2) Build Example](#22-build-example)

***

### 1) Hardware

#### 1.1) Hardware Requirements

- [DragonBoard-410c (tested)](https://www.96boards.org/product/dragonboard410c/) / [HiKey](http://www.96boards.org/product/hikey/) / [Bubblegum-96](http://www.96boards.org/product/bubblegum-96/)

- [SeeedStudio Sensor Mezzanine (tested)](https://www.96boards.org/product/sensors-mezzanine/) / [Audio Mezzanine (Only Compatible with DragonBoard-410c)](https://www.96boards.org/product/audio-mezzanine/)

- [Flick3D (tested on Large)](https://uk.pi-supply.com/products/flick-large-standalone-3d-tracking-gesture-breakout)

#### 1.2) Hardware Setup

> Note: Make sure the Voltage Levels are at 3v3 and not 1v8 or 5v

| 96Boards  | Flick3D |
|:---------:|:-------:|
| I2C-1 SDA | SDA     |
| I2C-1 SCL | SCL     |
| RST       | GPIO-K  |
| TS        | GPIO-L  |

***

### 2) Software

#### 2.1) Setup MRAA

```
$ git clone https://github.com/Mani-Sadhasivam/mraa
$ cd mraa
$ git checkout 28b0550d9e016b02f472005bbdedc315f0cd23d9
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
$ make -j$(nproc)
$ sudo make install
```
> Note: these steps may change in the near future

#### 2.2) Build Example
- C++ source files flick.h and flick.cpp defines API class that provides programming interface for Flick 3D gesture boards.
- Include flick.h and flick.cpp to your c++ project.
- Depends on mraa library.

**Build example program on Linux:**
```bash
g++ flick_example.cpp flick.cpp -o flick_example -lmraa

```

**Run example:**
```bash
sudo ./flick_example
```
