# Oracle Free Tier WireHole
Wirehole is a combination of pihole, wireguard, and unbound wrapped in a handy docker-compose package.

## Installation

Basic Usage:

```bash
$ git clone https://github.com/IAmStoxe/oracle-free-tier-wirehole.git
$ cd oracle-free-tier-wirehole

```

## Usage

```bash
$ terraform init
$ # Fill in .tfvars file
$ terraform plan
$ terraform apply
```
For complete instruction please see [https://medium.com/p/dce581f71b7](https://medium.com/p/dce581f71b7)


#### docker-compose successful output:
```bash
$ docker-compose up
Starting unbound ... done
Starting pihole  ... done
Starting wireguard ... done
Attaching to unbound, pihole, wireguard
unbound      | [1599257005] unbound[1:0] error: Could not open logfile /var/log/unbound.log: No such file or directory
unbound      | [1599257005] unbound[1:0] notice: init module 0: validator
unbound      | [1599257005] unbound[1:0] notice: init module 1: iterator
unbound      | [1599257005] unbound[1:0] info: start of service (unbound 1.11.0).
pihole       | [s6-init] making user provided files available at /var/run/s6/etc...exited 0.
pihole       | [s6-init] ensuring user provided files have correct perms...exited 0.
pihole       | [fix-attrs.d] applying ownership & permissions fixes...
pihole       | [fix-attrs.d] 01-resolver-resolv: applying... 
unbound      | [1599257006] unbound[1:2] info: generate keytag query _ta-4f66. NULL IN
pihole       | [fix-attrs.d] 01-resolver-resolv: exited 0.
pihole       | [fix-attrs.d] done.
pihole       | [cont-init.d] executing container initialization scripts...
pihole       | [cont-init.d] 20-start.sh: executing... 
pihole       |  ::: Starting docker specific checks & setup for docker pihole/pihole
wireguard    | [s6-init] making user provided files available at /var/run/s6/etc...exited 0.
wireguard    | [s6-init] ensuring user provided files have correct perms...exited 0.
wireguard    | [fix-attrs.d] applying ownership & permissions fixes...
wireguard    | [fix-attrs.d] done.
wireguard    | [cont-init.d] executing container initialization scripts...
wireguard    | [cont-init.d] 01-envfile: executing... 
wireguard    | [cont-init.d] 01-envfile: exited 0.
wireguard    | [cont-init.d] 10-adduser: executing... 
wireguard    | usermod: no changes
wireguard    | 
wireguard    | -------------------------------------
wireguard    |           _         ()
wireguard    |          | |  ___   _    __
wireguard    |          | | / __| | |  /  \ 
wireguard    |          | | \__ \ | | | () |
wireguard    |          |_| |___/ |_|  \__/
wireguard    | 
wireguard    | 
wireguard    | Brought to you by linuxserver.io
wireguard    | -------------------------------------
wireguard    | 
wireguard    | To support the app dev(s) visit:
wireguard    | WireGuard: https://www.wireguard.com/donations/
wireguard    | 
wireguard    | To support LSIO projects visit:
wireguard    | https://www.linuxserver.io/donate/
wireguard    | -------------------------------------
wireguard    | GID/UID
wireguard    | -------------------------------------
wireguard    | 
wireguard    | User uid:    1000
wireguard    | User gid:    1000
wireguard    | -------------------------------------
wireguard    | 
wireguard    | [cont-init.d] 10-adduser: exited 0.
wireguard    | [cont-init.d] 30-config: executing... 
wireguard    | Uname info: Linux b3a40756e62b 5.3.0-1033-aws #35-Ubuntu SMP Wed Aug 5 15:47:17 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
wireguard    | **** It seems the wireguard module is already active. Skipping kernel header install and module compilation. ****
wireguard    | **** Server mode is selected ****
wireguard    |   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
wireguard    |                                  Dload  Upload   Total   Spent    Left  Speed
  [✓] Update local cache of available packages
pihole       |   [i] Existing PHP installation detected : PHP version 7.0.33-0+deb9u8
pihole       | 
pihole       |   [i] Installing configs from /etc/.pihole...
pihole       |   [i] Existing dnsmasq.conf found... it is not a Pi-hole file, leaving alone!
  [✓] Copying 01-pihole.conf to /etc/dnsmasq.d/01-pihole.conf
pihole       | chown: cannot access '': No such file or directory
pihole       | chmod: cannot access '': No such file or directory
pihole       | chown: cannot access '/etc/pihole/dhcp.leases': No such file or directory
pihole       | 
pihole       |   [✓] Password Removed
pihole       | Existing DNS servers used (unset & unset)
pihole       | DNSMasq binding to default interface: eth0
pihole       | Added ENV to php:
pihole       |                  "PHP_ERROR_LOG" => "/var/log/lighttpd/error.log",
pihole       |                  "ServerIP" => "10.1.0.100",
pihole       |                  "VIRTUAL_HOST" => "10.1.0.100",
pihole       | Using IPv4 and IPv6
pihole       | ::: setup_blocklists now setting default blocklists up: 
pihole       | ::: TIP: Use a docker volume for /etc/pihole/adlists.list if you want to customize for first boot
pihole       | ::: Blocklists (/etc/pihole/adlists.list) now set to:
pihole       | https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
pihole       | https://mirror1.malwaredomains.com/files/justdomains
pihole       | ::: Testing pihole-FTL DNS: FTL started!
pihole       | ::: Testing lighttpd config: Syntax OK
pihole       | ::: All config checks passed, cleared for startup ...
pihole       |  ::: Docker start setup complete
pihole       |   [i] Creating new gravity database
pihole       |   [i] Migrating content of /etc/pihole/adlists.list into new database
pihole       |   [i] Neutrino emissions detected...
  [✓] Pulling blocklist source list into range
pihole       | 
  [✓] Preparing new gravity database
pihole       |   [i] Target: https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
  [✓] Status: Retrieval successful
pihole       |   [i] Received 56116 domains
pihole       | 
pihole       |   [i] Target: https://mirror1.malwaredomains.com/files/justdomains
  [✓] Status: Retrieval successful
pihole       |   [i] Received 26854 domains
pihole       | 
  [✓] Storing downloaded domains in new gravity database
  [✓] Building tree
  [✓] Swapping databases
pihole       |   [i] Number of gravity domains: 82970 (82928 unique domains)
pihole       |   [i] Number of exact blacklisted domains: 0
pihole       |   [i] Number of regex blacklist filters: 0
pihole       |   [i] Number of exact whitelisted domains: 0
pihole       |   [i] Number of regex whitelist filters: 0
  [✓] Cleaning up stray matter
pihole       | 
pihole       |   [✓] DNS service is running
pihole       |   [i] Pi-hole blocking will be enabled
pihole       |   [i] Enabling blocking
  [✓] Pi-hole Enabled
pihole       |   Pi-hole version is v5.1.2 (Latest: v5.1.2)
pihole       |   AdminLTE version is v5.1.1 (Latest: v5.1.1)
pihole       |   FTL version is v5.2 (Latest: v5.2)
pihole       | [cont-init.d] 20-start.sh: exited 0.
pihole       | [cont-init.d] done.
pihole       | [services.d] starting services
pihole       | Starting pihole-FTL (no-daemon) as root
pihole       | Starting lighttpd
pihole       | Starting crond
pihole       | [services.d] done.
wireguard    | curl wg0 -j ACCEPT; iptables -A FORWARD -o wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
wireguard    | **** SERVERURL var is either not set or is set to "auto", setting external IP to auto detected value of XXX.XXX.XXX.XXX ****
wireguard    | **** Internal subnet is set to 10.6.0.0 ****
wireguard    | **** Peer DNS servers will be set to 10.1.0.100 ****
wireguard    | **** No found wg0.conf found (maybe an initial install), generating 1 server and 1 peer/client confs ****
wireguard    | PEER 1 QR code:
wireguard    | █████████████████████████████████████████████████████████████████
wireguard    | █████████████████████████████████████████████████████████████████
wireguard    | ████ ▄▄▄▄▄ █▀▀▀▄ ▀▀▀▀▄█ ██   ▄▀ ██ ██▄▀█    █▄▄█▀ ▄ ██ ▄▄▄▄▄ ████
wireguard    | ████ █   █ █▀▄█▀█▄█▄██▀▄   ▀▀██▀▄█ ▀▄█  ▀ █▀▄█▄ ▄▄▄ ██ █   █ ████
wireguard    | ████ █▄▄▄█ █▀█   ▀▀▄                               ▄██ █▄▄▄█ ████
wireguard    | ████▄▄▄▄▄▄▄█   ▀ ▀   █                         █▄█▄▀ █▄▄▄▄▄▄▄████
wireguard    | ████ ▄▄  █▄▄▄  ▄▀█▀▀▄    ▀█ ▀█  ▄  █▀▀▄▄██▄▄▀▀█▄ ██▀▀ █ █▄█ ▀████
wireguard    | █████  ▄█ ▄  ▀▀█▄▄  █▀ ▀ ▀ ▄  ▄ ▀▄▀▀█ ██ ▀██▀   ▀ ▀▀   ▀  ▀▄ ████
wireguard    | ████▀▀██  ▄▄▄ ██▀▄▄██▀ ██▀▄  ▀▀ █▄█   ▄ ▄█▄██   ▀▄▄█  █▀▀█ ▄▀████
wireguard    | ████ ▄█▀█▀▄▄   ▄███ ▄█ ▀▀▀▀█ ▄█ ▀▀▀▀▀▄ █   █ ███▄ █ ▄▄▄▄▀▀▀ █████
wireguard    | ████▀▄ ▀▀ ▄▄ ▄▄  █▀██    ▀▀▀▀▀  ▄  █▀▀██  ██▀   ▀█▄█▄█  ▄▄▀ ▀████
wireguard    | ████   ▀█ ▄▄                                          █  ▀▀██████
wireguard    | ███████  ▄▄█ █                                        ▄█▀█▀▀▄████
wireguard    | ████ ▄  █▄▄▀  ▄   ▀▄ █ ▄██▀▀█▀   █▄▄█▀▄█▀█▄ █ ▀▄█ ▄█ ▀   █  █████
wireguard    | ████▄██▀█▄▄ ▀ ▄▀                       ▀▄  ▄█ ▀▄  █▀ ▀██▀▄███████
wireguard    | ████ ▀█  ▄▄▄ ██▀███▄█▄█ █▄█▀ ▀ ▄▄▄ ▀▀  ▀▄ ▀▀█   █ █  ▄▄▄   ▄▀████
wireguard    | ████▄██  █▄█  █                                          ▀▀ ▀████
wireguard    | █████▀█▄▄▄▄▄ █▄ ▀▄ ██  ██▀ ▄ █▄ ▄▄▄▀ ▀▄▀█  █▀ █▄ ▄ ▄▄▄  ▄ ▀▄█████
wireguard    | █████▀▄▀  ▄▄█▄▀                                    ██▀▄█   █▀████
wireguard    | ████▄   ▀ ▄ ▀ ▀▀▀▀▀▀█▀██▀ █  █▀█▀███ ▀▄█  █▄ █     ▀▀█▀██▀ ▄█████
wireguard    | ████ ▀ ▄   ██                                      ▀ ▀▀▀ ▀▀ ▀████
wireguard    | ███████ ▄█▄  ▀█▄▄  ▀█ █▀ █▀▄ ▄ ▀▄█▄▄█▀▄█▄▄▄▄█▀ ▀█ █▀  ▄ ██▀▄█████
wireguard    | ████▀█ █▀ ▄                                             █ ▄▀█████
wireguard    | ████▀▄ ▄▄█▄▄  ▄ ▄██▄ ▀ █ ▀ ▄▄█▀▀ ▄ ▀▀▄█▀▄██▀▀ ▄   ▄▄▄▄▀▀▄▀▀▀ ████
wireguard    | ████ ▀▄▄▀▀▄▀▀▀▄ ▄ █▄▄▀ ██▀▄▀ █▄██▀▀▄█▄▄█ ████▄ ▀█▄█▀▄▀ ▀▄ ▀ █████
wireguard    | ████ ▀ ▀▀▄▄ ▄ █▄ ▄ ██ ▄▀█▄▄  ▄ ▄ █▄▀ ▄▄▀██▄▀▀██▀▀▄▄ ▄   ██ ▄▀████
wireguard    | ██████████▄█▀▀█ ▄█ █▄▄ ▀▄▀█▀▀  ▄▄▄ ▀█▀█ ▄▀█▀█▀▀ ██▄▀ ▄▄▄ ▄██▄████
wireguard    | ████ ▄▄▄▄▄ █▄▄▄█▀▄█▀██ ▄ ▀█ ▀  █▄█ ▀▀█▄ ██▄█ ▀▄ ▀█▄▄ █▄█    █████
wireguard    | ████ █   █ █  ▄▄ ▄█   ▄▄█ █▀   ▄ ▄  █ ▄█▄▄█ █▀ ▄████ ▄▄  ▀▀▄▄████
wireguard    | ████ █▄▄▄█ █ ▀ ▄▄█ ▄ ▀▀▄██▄▀█▀█ █▀█▀▀▀▄   ▄ █▀▀▄▀ ▄▀███▀██▀██████
wireguard    | ████▄▄▄▄▄▄▄█▄██▄▄█▄▄▄▄▄██▄█▄▄▄█▄█▄█▄▄▄▄█▄▄▄█████▄▄█▄█▄▄████▄█████
wireguard    | █████████████████████████████████████████████████████████████████
wireguard    | █████████████████████████████████████████████████████████████████
wireguard    | [cont-init.d] 30-config: exited 0.
wireguard    | [cont-init.d] 99-custom-scripts: executing...
wireguard    | [custom-init] no custom files found exiting...
wireguard    | [cont-init.d] 99-custom-scripts: exited 0.
wireguard    | [cont-init.d] done.
wireguard    | [services.d] starting services
```

## Recommended configuration / Split tunnel:

Modify your wireguard client configuring `AllowedIps` to `10.2.0.0/24` to only tunnel the web panel and DNS traffic.

## Access PiHole Interface

While connected to WireGuard, navigate to http://10.2.0.100/admin

*The password (unless you set it in `docker-compose.yml`) is blank.*

![Pi Hole Admin Interface](https://i.imgur.com/DdjsTR2.png)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
