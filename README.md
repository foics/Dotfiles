This is a repo with all my linux configuration files. It is formatted for usage with GNU stow. If you don't know what that is I highly recommend checking out Chris@machine's video on it. I do not claim any of the code as my own. I simply modified these files to my liking for personal use, however anyone is welcome to use this.

The polybar wireguard module will not work without these commands in sudoers

%wheel ALL=NOPASSWD: SETENV:/usr/bin/wg
%wheel ALL=NOPASSWD: SETENV:/usr/bin/wg-quick
%wheel ALL=NOPASSWD: SETENV:/usr/bin/wg-vpn

Put the wg-vpn script inside of /usr/bin
The wg-vpn is a custom script that just toggles wireguard. I will put it in the root of the repo.
