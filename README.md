# pdjr-kicad-nmea2000-common

This project provides a circuit design and PCB layout for the generic
elements of an NMEA 2000 module based around the Teensy 4.0
microcontroller.

The PCB layout can be imported into other projects, relieving them of
the effort of designing and implementing fundamental services which
power, interface, configure and process most NMEA hardware devices.
A project designer using the PCB layout can focus on just those
elements of application design appropriate to their task in hand.

A parallel project
[pdjr-nmea2000-common-firmware]()
provides a C++ pattern and associated libraries that can be used as
a basis for implementing firmware which exploits this hardware.

## Design elements

### PCB

The double-sided PCB is suitable for use in a *** case and employs
both surface-mount and through-hole components.

### Microcontroller

The project supports both Teensy 3.2 and Teensy 4.0 microcontroller
modules.

### Power supply

A TMR-2-2211 DC-DC converter takes bus power from NET-S/NET-C and
outputs a 5VDC 400mA supply for the PCB. The converter power supply
input is protected by a 0.25A self-resetting polymer fuse (selected
on the assumption of a 12VDC bus voltage). Output from the converter
is filtered through a smooting capacitor.

### CAN interface

An MCP-2551/IP CAN controller converts data on CAN-H/CAN-L to 5VDC
signals suitable for microcontroller use. Provision is made for the
inclusion of a switch-selectable 120 Ohm bus termination resistor.
Microocontroller connections are level shifted to 3.3V

### Configuration interface

The configuration interface consists of an SPST momentary tactile
switch (PRG) and an 8-position DIL switch (INSTANCE). PRG is directly
connected to GPIO D14 and is active low (GPIO D14 should be configured
with INPUT_PULLUP). INSTANCE channels are pulled high (active when
low) and are connected to the parallel inputs of a PISO buffer with
the buffer interface connected to GPIO D10, D11 and D12.

A 5VDC, 400mA, module power supply driven from the host NMEA bus.
   
2. A CAN interface between the host NMEA bus and the Teensy 4.0
   microcontroller.
   
3. A user configuration interface consisting of a 8-position DIL
   switch and SPST push button. As a minimum this allows the
   configuration of the module instance address required by many
   NMEA devices.
   
4. A user display interface consisting of up to 17 LEDs. Typically
   one LED will be used to report NMEA connection status and other
   LEDs will have some application specific role.
   
5. A Teensy 4.0 microcontroller with 13 GPIO pins available for
   application use.
   
## How to use this PCB design as the basis for a new project

The PCB design is simply imported into a new KiCad project and then
extended to provide the required application features.

1. Open Kicad(1) and create a new project.

2. Download MNEA2000-COMMON.kicad_pcb into the new project folder.

3. Open pcbnew(1), choose FILE->MERGE, select the file you just
   downloaded and save it as a the new project's PCB (if your KiCad
   project is called blob.prj then save the file as blob.kicad_pcb).
   
4. 
