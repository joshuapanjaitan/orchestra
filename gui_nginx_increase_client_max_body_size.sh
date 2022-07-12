#!/bin/bash

echo "GUI_Nginx - increase client_max_body_size"

search_str="client_max_body_size 1024M"
replace_str="client_max_body_size 4096M"
filename="/home/cronus/config/gui_nginx.conf"
sudo sed -i -e "s/$search_str/$replace_str/" $filename
sudo service nginx restart

echo "GUI_Nginx - finished increasing client_max_body_size"
