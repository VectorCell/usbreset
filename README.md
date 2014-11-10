usbreset
========

Easily reset usb device from the command line

Usage:

Compile the program:

    $ make

Get the Bus and Device ID of the USB device you want to reset:

    $ lsusb  
    Bus 002 Device 003: ID 0fe9:9010 DVICO  

Make our compiled program executable, if it isn't already:

    $ chmod +x usbreset

Execute the program with sudo privilege; make necessary substitution for <Bus> and <Device> ids as found by running the lsusb command:

    $ sudo ./usbreset /dev/bus/usb/002/003

Credit to Alan Stern, from http://marc.info/?l=linux-usb&m=121459435621262&w=2
