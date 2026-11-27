# Lenovo Smart Clock Autorun

A Magisk module that locks the screen orientation and opens the stock Android DeskClock app after the Lenovo Smart Clock boots.
Background

After Lenovo Smart Clock setup stopped working for me through the Google Home app, I wanted to keep using the device as a clock. I followed a community guide to repurpose it as a Home Assistant dashboard. That process included backing up the firmware and rooting the clock.

Once rooted, I used ADB over Wi-Fi to install a Magisk module that runs a small script at boot. The script waits until Android finishes starting, locks the display orientation, and launches the stock DeskClock app.
What the script does

The included service.sh:

    Waits for Android to report that boot has completed.
    Disables automatic screen rotation.
    Sets the screen rotation to 1.
    Opens the stock clock app: com.android.deskclock/.DeskClock.

The delay gives the system time to finish starting before the clock app opens. If you use a different clock app, replace the component passed to am start with that app’s launch activity.
Install

Create a Magisk module containing these two files:
text

    deskclock-module/
    ├── module.prop
    └── service.sh

Example module.prop:
text

id=deskclockboot
name=DeskClock Boot
version=1.0
versionCode=1
author=local
description=Locks screen rotation and launches DeskClock after boot

Make the script executable and package the files into a ZIP:

Transfer the ZIP to the clock. For example, from a computer with ADB connected:

In Magisk, open Modules → Install from storage, choose deskclockboot.zip, and reboot the clock.

# Notes

This is an autorun workaround, not a replacement Home/launcher app. The IoT launcher remains installed and may still appear briefly during startup.
Keep a firmware backup and avoid disabling the original launcher until you have tested the setup through a full reboot.
This module was tested with the stock app component com.android.deskclock/.DeskClock on my rooted Lenovo Smart Clock. Compatibility with other firmware versions and clock apps may vary.
