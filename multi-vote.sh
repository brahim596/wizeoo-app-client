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

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/fr28.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php saitamas3 d365a1b62f7c911056bf28ec3328b210

sleep $timeout

killall openvpn

sleep $timeout

#3***************************************************************************************

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/be12.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php saitamas4 b79d898727b012acf60ed2944ac28f8a 

sleep $timeout

killall openvpn

sleep $timeout

#4***************************************************************************************

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/at47.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php spada18 5652c2ea0c14355dd20ceed83913734f

sleep $timeout

killall openvpn

sleep $timeout

#5***************************************************************************************

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/au132.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php rakikotaru dc2fb7b76f734027b3e3527f079a1e4b

sleep $timeout

killall openvpn

sleep $timeout

#6***************************************************************************************

nohup openvpn /home/ubuntu/workspace/wizeoo-app-client/openvpn_udp/au193.nordvpn.com.udp.ovpn &

sleep $timeout

php  /home/ubuntu/workspace/wizeoo-app-client/vote.php pedrolito 0f96d891f5513e891cd8f942fe97c0f2

sleep $timeout

killall openvpn

sleep $timeout

#***************************************************************************************

