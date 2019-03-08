#!/bin/sh

php /home/ubuntu/workspace/wizeoo-app-client/vote.php kidouss 1ee31ec61d018da8a667cea06a33f052

timeout=10;

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/fr26.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php saitamas e32bf46fc4da6d28002221f259220969

sleep $timeout

killall openvpn

sleep $timeout



#1***************************************************************************************

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/fr27.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php saitamas2 a6ea3b4add8a567ac8e96d0aacc4c4c5 

sleep $timeout

killall openvpn

sleep $timeout

#2***************************************************************************************



