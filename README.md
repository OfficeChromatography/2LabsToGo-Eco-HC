# 2LabsToGo-HC

The repository contains the files for upgrade 2LabsToGo (https://github.com/OfficeChromatography/2LabsToGo) to Humidity Control.

## Installing the software updates
On the Raspberry Pi, open a new terminal and change to the directory Downloads
```bash
	cd ~/Downloads
```
Clone the 2LabsToG-HC repository from Github
```
	sudo git clone https://github.com/OfficeChromatography/2LabsToGo-HC.git
````
In the downloaded folder, there is a subfolder named Software_HC-update. Copy this folder to the folder of the 2LabsToGo-Software
```
	sudo cp -R ~/Downloads/2LabsToGo-HC/Software_HC-update ~/2LabsToGo-Software
````
Change to the Software_HC-update directory
````
	cd ~/2LabsToGo-Software/Software_HC-update
````
Make the file 2LabsToGo-HC.sh executable
````
	sudo chmod +x 2LabsToGo-HC.sh
```` 
and execute the script with
````
	./2LabsToGo-HC.sh
````
The modified and new files are copied into the respective software folders. Before, however, the old files are renamed with the extension “.old”, so they can be recovered in case of problems. To find them, search for “*.old”.


## Updating the firmware
The Marlin firmware and a built hex file are available in the folder Firmware-update.<br>
For flashing the firmware (firmware_humidity_control.hex), consult the 2LabsToGo-Assembly Guide<br>
(https://github.com/OfficeChromatography/2LabsToGo/blob/main/2LabsToGo-Instructions/2LabsToGo-Assembly%20guide.pdf).

After flashing the new firmware, the PID tuning must be performed again:<br>
•	In the software (Connection tab), connect the board.<br>
•	Insert the multifunctional plateholder and connect the plug.<br>
•	Connect the Mini-Incubator to the board.<br>
•	Send the following Gcodes and wait for finishing the tuning process
````
	M303 E-1 C8 S90 U  (for plateholder)
	M303 E0 C8 S40 U  (for Mini-Incubator)
````
