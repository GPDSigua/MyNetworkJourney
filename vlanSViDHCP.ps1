config t
vlan 25
 name _____.com
 exit
Int vlan 25
 no shut
 ip add 10.0._._ 255.255._._
 ip ospf 1 area 0
ip dhcp excluded-add 10.0._._ 10.0._._
ip dhcp pool _____.com
 network 10.0._._ 255.255._._
 default-router 10.0._._
 domain-name ____.com
 dns-server 10.m.1.10
 option 150 ip 10.m.100.8
 Int Fa 0/7
  swi Voice vlan 25
  do sh ip dhcp binding