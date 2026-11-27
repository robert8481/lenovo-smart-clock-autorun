# Lenovo Smart Clock Autorun

A Magisk module that locks the screen orientation and opens the stock Android DeskClock app after the Lenovo Smart Clock boots.
Background

After Lenovo Smart Clock setup stopped working for me through the Google Home app, I wanted to keep using the device as a clock. I followed a community guide to repurpose it as a Home Assistant dashboard. That process included backing up the firmware and rooting the clock.

Once rooted, I used ADB over Wi-Fi to install a Magisk module that runs a small script at boot. The script waits until Android finishes starting, locks the display orientation, and launches the stock DeskClock app.

The delay gives the system time to finish starting before the clock app opens. If you use a different clock app, replace the component passed to am start with that app’s launch activity.

# Notes

This is an autorun workaround, not a replacement Home/launcher app. The IoT launcher remains installed and may still appear briefly during startup.
Keep a firmware backup and avoid disabling the original launcher until you have tested the setup through a full reboot.
This module was tested with the stock app component com.android.deskclock/.DeskClock on my rooted Lenovo Smart Clock. Compatibility with other firmware versions and clock apps may vary.

* GPT Luna 6 was used in the development of this script
