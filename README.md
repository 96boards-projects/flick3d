---
# Front Matter
# Title of your project used for the breadcrumb title and meta title.
title:  Flick3D

# Permalink your project will reside under on the 96boards.org website.
# separate your title's words with dashes for SEO purposes.
permalink: /projects/flick3D/
author: Sahaj Sarup

# Add a description of your project
description: This is c++ language source library for Flick3D boards.


# Add the names of your images which are stored in the sub folders here.
# The first image is always used in the table at /projects/
# This section is used to add a social media share image to your project.
# Place the image you'd like to use when sharing on social media in the /assets/images/projects/
# folder and adjust the following YAML accordingly.
# High Res 1920 x 1080
# regenerated on site build
#image: 
#    path: /assets/images/projects/share_image.png
#    list:
#        - thumb.png
#        - share.png
#social:
#  name: 96Boards
#  links:
#    - https://twitter.com/96boards
#    - https://www.facebook.com/96Boards/
#    - https://www.linkedin.com/company/96boards/
#    - https://plus.google.com/+96Boards
#    - https://github.com/96boards
project:
    # Difficulty level for your project <Beginner, Intermediate, Experienced>
#    difficulty_level:
#     - Intermediate
    # Boards that you have used in this project. For a full list of boards see 
    # this file in the 96boards/website repo - _data/boards.yml
    boards_used: 
        - dragonboard410c
        - hikey
        - bubblegum-96
        - sensors-mezzanine
        - audio-mezzanine
    # Verticals are catagories that your project belongs to. For a full list of verticals see 
    # this file in the 96boards/website repo - _data/verticles.yml
    verticals:
        - Maker
        - 
#Optional tags for your projects: meta-key words
tags:
- dragonboard410c
- hikey
- bubblegum-96
- sensors-mezzanine
- audio-mezzanine
---
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
