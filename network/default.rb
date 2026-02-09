package 'dnsmasq'
package 'dnscrypt-proxy'

execute """
nmcli connection modify 'Wired connection 1' ipv4.ignore-auto-dns yes
nmcli connection modify 'Wired connection 1' ipv4.dns 127.0.0.1
nmcli connection modify 'Wired connection 1' ipv6.ignore-auto-dns yes
nmcli connection modify 'Wired connection 1' ipv6.dns ::1
"""

remote_file '/etc/NetworkManager/NetworkManager.conf'
remote_file '/etc/NetworkManager/dnsmasq.d/local.conf'

execute 'systemctl disable --now dnsmasq.service'
execute 'service dnscrypt-proxy restart'
execute 'service NetworkManager restart'
