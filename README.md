# EFI-Clover-A456URK
 This is an EFI Clover for Asus A456URK which running Hackintosh 10.14 or 10.15. It has DSDT patch, Clover config, kexts in /E/C/K and /L/E.

 For use it, just simply put the EFI folder to your EFI partition. for activating the Wi-Fi with AR9565 module, you could put the kexts from /L/E to your /Library/Extensions.

 To fix the microphone, run the install.command file that located in Jack_Fix directory. Then, reboot your machine to take the effect.

 My system properties are:\
 CPU : Intel i5-7200U Kabylake\
 Display Card : Intel HD 620 + Nvidia 930MX\
 Resolution : 1366 x 768\
 RAM : 8GB (4+4) 2133MHz\
 Sound : Conexant CX 8050\
 Storage : SSD 512 GB + HDD 1TB (both are SATA)\
 Ethernet : Realtek RTL 8168\
 WiFi + BT : Atheros A9565\
 Touchpad : ELAN 1200

Everything is work except the Nvidia Graphics Card, because Nvidia Optimus is no longer supported since Mojave.

Thanks to:\
MaLd0n from this topic https://olarila.com/forum/viewtopic.php?f=19&t=1131 /
Mirone from this topic https://olarila.com/forum/viewtopic.php?f=28&t=7782