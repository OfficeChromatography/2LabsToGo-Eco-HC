#Script to update 2LabsToGo software for humidity control

#humidity control
yes | sudo cp templates/humiditycontrol.html ../app/finecontrol/templates/humiditycontrol.html
yes | mkdir  ../app/templates/modules/humiditycontrol
yes | sudo cp modules/humiditycontrol.js modules/humiditycontrol.html ../app/templates/modules/humiditycontrol 
yes | sudo mv ../app/finecontrol/views.py ../app/finecontrol/views.py.old
yes | sudo mv ../app/finecontrol/urls.py ../app/finecontrol/urls.py.old
yes | sudo cp views.py urls.py ../app/finecontrol
yes | sudo mv ../app/templates/sidebar.html ../app/templates/sidebar.html.old
yes | sudo cp sidebar.html ../app/templates




