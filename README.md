# miniLinux

miniLinux is a Linux distribution for embedded systems and smart IoT devices, 
and it uses MiniGUI (the MiniGUI core and the components) as the graphics and
window system.

We plan to provide a Python-based runtime framework and a set of APIs 
for the development of miniLinux apps.

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

3. Make and install `chipmunk` library:

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

### 2018-01-30

Add `Building` section.

### 2018-01-29

Add `chipmunk-5.3.1` in `3rd-party/`.

### 2018-01-23

Currently, this repo just includes some scripts to build MiniGUI 3.2.x
core, components, and demonstration apps.

## Copying

    Copyright (C) 2018, Beijing FMSoft Technologies Co., Ltd.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Notes

Note that the software in `3rd-party/` may use different licenses. 
Please refer to the LICENSE or COPYRING files in the source trees for more 
information.

Note that the software fetched from remote repositories may use different
licenses.  Please refer to the LICEENSE or COPYING files in the sorce trees
for more information.

