execute """
nmcli connection modify 'Wired connection 1' ipv4.ignore-auto-dns yes
nmcli connection modify 'Wired connection 1' ipv4.dns 127.0.0.1
nmcli connection modify 'Wired connection 1' ipv6.ignore-auto-dns yes
nmcli connection modify 'Wired connection 1' ipv6.dns ::1
"""

file '/etc/NetworkManager/NetworkManager.conf' do
  content <<~S
    [main]
    dns=dnsmasq
    plugins=ifupdown,keyfile

    [ifupdown]
    managed=false
  S
  mode '644'
end

file '/etc/NetworkManager/dnsmasq.d/local.conf' do
  content <<~S
    listen-address=::1,127.0.0.1
    interface=lo
    bind-interfaces

    cache-size=100000

    log-queries=extra
    log-facility=/var/log/dnsmasq.log

    no-resolv
    no-negcache

    server=8.8.8.8
    server=8.8.4.4
    all-servers
  S
  mode '644'
end

execute 'systemctl disable --now dnsmasq.service'
execute 'service NetworkManager restart'
