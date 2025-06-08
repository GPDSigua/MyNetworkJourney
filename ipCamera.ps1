config t
ip routing
ip dhcp pool CAMERA6
host 10.22.50.6 255.255.255.0
client-identifier 001a.0709.c238
ip dhcp pool CAMERA8
host 10.22.50.8 255.255.255.0
client-identifier 001a.0704.7f6a
end
show ip dhcp binding
 
 
 
 config t
   hostname CUCM-22
   enable secret pass
   service password-encryption
   no logging console
   no ip domain-lookup
   line console 0
     password pass
     login
     exec-timeout 0 0
    line vty 0 14
      password pass
      login
      exec-timeout 0 0
   Int Fa 0/0
     no shutdown
	 ip add 10.22.100.8 255.255.255.0 
	 end

ANALOG PHONES:
configure terminal
dial-peer voice 1 pots
   destination-pattern 2200
   port 0/0/0
dial-peer voice 2 pots
   destination-pattern 2201
   port 0/0/1
dial-peer voice 3 pots
   destination-pattern 2202
   port 0/0/2
dial-peer voice 4 pots
   destination-pattern 2203
   port 0/0/3
end
