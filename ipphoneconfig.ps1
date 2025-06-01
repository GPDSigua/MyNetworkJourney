config t   
no telephony-service
telephony-service
   no auto assign
   no auto-reg-ephone
   max-ephones 5
   max-dn 20
   ip source-address 10.22.100.8 port 2000
   create cnf-files
ephone-dn 1
  number 2211
ephone-dn 2
  number 2222
ephone-dn 3
  number 2233
ephone-dn 4
  number 2244
ephone-dn 5
  number 2255
ephone-dn 6
  number 2266
ephone-dn 7
  number 2277
ephone-dn 8
  number 2288
 ephone-dn 9
   number 2299
ephone-dn 10
 number 2298
Ephone 1
  Mac-address 64e9.50ca.747e 
  type 8945
  button 1:8 2:7 3:6 4:5
  restart
Ephone 2
  Mac-address ccd8.c1fb.2325
  type 8945
  button 1:4 2:3 3:2 4:1
  restart  
end
