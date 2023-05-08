# Suspend/resume key based around a Waveshare RP2040-Zero board
# Based on handwired/onekey/rp2040

To trigger keypress, short together pins *GP4* and *GP5*.

Double-tap reset to enter bootloader mode. Copy the built uf2 file to the device by dragging the file to the new USB disk.

The device sends the *KC_SYSTEM_SLEEP* key when pressed. At least on Linux and Mac, this should send the machine to sleep. Pressing it should wake the machine if wake-on-usb-keyboard is enabled (it normally is).

The device glows bright green when the attached computer is keeping the USB bus active, and dim red when the USB bus is suspended.

An openscad file for an enclosure is included. It houses the Waveshare RP2040-Zero and a single MX-type keyswitch.

## Supported Hardware

* Waveshare RP2040-Zero
