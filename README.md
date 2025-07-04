# 2LabsToGo-Eco-HC

<u>Reference:</u> Schwack, W., Schmidt, J., Nimmerfroh, T. et al. Do-it-yourself, stand-alone, 
open-source nebulizer for derivatizations and bioassays in planar chromatography. 
JPC-J Planar Chromat (2025). https://doi.org/10.1007/s00764-025-00358-8

The repository contains the files for upgrading 2LabsToGo-Eco
 (https://github.com/OfficeChromatography/2LabsToGo-Eco) for Humidity Control.

## Downloading 2LabsToGo-Eco-HC
On the Raspberry Pi, open a new terminal and change to the directory Downloads
```bash
	cd ~/Downloads
```
Clone the 2LabsToG-Eco-HC repository from Github
```
	sudo git clone https://github.com/OfficeChromatography/2LabsToGo-Eco-HC.git
````

## Updating the firmware
The Marlin firmware and a built hex file are available in the folder Firmware-update.<br>
Copy the firmware hex file (firmware_2LabsToGo-Eco.hex) to the folder 2LabsToGo-Eco-Firmware.
```
	sudo cp -R ~/Downloads/2LabsToGo-Eco-HC/Firmware-update ~/2LabsToGo-Eco/2LabsToGo-Eco-Firmware
````
Change to the firmware folder
```
	cd ~/2LabsToGo-Eco/2LabsToGo-Eco-Firmware
````
Place the 2x4 jumper block onto the "ISP to PI" pins of the mainboard!<br> <br>
Execute the avrdude command
```
	sudo avrdude -p atmega2560 -C avrdude_gpio.conf -c 2LabsToGo -v -U flash:w:firmware_2LabsToGo-Eco.hex:i
````
Remove the jumper block from the "ISP to Pi" pins.<br>

## PID Tuning
After flashing the new firmware, the PID tuning must be performed again:<br>
•	In the software (Connection tab), connect the board.<br>
•	Insert the multifunctional plateholder and connect the plug.<br>
•	Connect the Mini-Incubator to the board.<br>
•	Send the following Gcodes and wait for finishing the tuning process
````
	M303 E-1 C8 S90 U  (for plateholder)
	M303 E0 C8 S40 U  (for Mini-Incubator)
````
