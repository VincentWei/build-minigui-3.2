# About

This repo includes some scripts to build MiniGUI 3.2 and 
mGUXDemo (https://github.com/VincentWei/cell-phone-ux-demo)

## Building

This instruction assumes that you are using Ubuntu Linux 16.04 LTS.

### Prerequisites

You can run `apt install <package_name>` to install the software on Ubuntu Linux.

  * Building tools:
    * git
    * gcc/g++
    * binutils
    * autoconf/automake
    * libtool
    * make
 * Dependent libraries:
    * libgtk2.0-dev
    * libjpeg64-dev
    * libpng12-dev
    * libfreetype6-dev
    * libsqlite3-dev
    * libxml2-dev

### Steps

1. Run `fetch-all.sh` to fetch all source from GitHub:

        $ ./fetch-all.sh

2. Make and install `gvfb`:

        $ cd gvfb
        $ cmake .
        $ make; sudo make install
        $ cd ..

3. Make and install `chipmunk` library (DO NOT use the chipmunk-dev package
   which is provided by Ubuntu):

        $ cd 3rd-party/chipmunk-5.3.1
        $ cmake .
        $ make; sudo make install
        $ cd ../..

4. Install MiniGUI resources:

        $ cd minigui-res
        $ ./configure
        $ sudo make install
        $ cd ..

5. Run `build-all.sh` to build all:

        $ ./build-all.sh

6. Run `mguxdemo`:

        $ cd /usr/local/bin
        $ ./mguxdemo

When there were some updates in the remote repos, you can run `update-all.sh` to
update them. You can run `clean-build-all.sh` to uninstall, clean, 
and re-install them.

## ChangeLog

### 2018-07-06

Change repo name to `scripts-build-minigui-all`

### 2018-01-30

Add `Building` section.

### 2018-01-29

Add `chipmunk-5.3.1` in `3rd-party/`.

### 2018-01-23

Currently, this repo just includes some scripts to build MiniGUI 3.2.x
core, components, and demonstration apps.

## Copying

    Copyright (C) 2018, Beijing FMSoft Technologies Co., Ltd.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Notes

Note that the software in `3rd-party/` may use different licenses. 
Please refer to the `LICENSE` or `COPYING` files in the source trees for more 
information.

Note that the software fetched from remote repositories may use different
licenses.  Please refer to the `LICENSE` or `COPYING` files in the sorce trees
for more information.

