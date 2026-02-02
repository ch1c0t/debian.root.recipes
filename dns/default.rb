execute 'nmcli connection modify "Wired connection 1" ipv4.ignore-auto-dns yes'
execute 'nmcli connection modify "Wired connection 1" ipv6.ignore-auto-dns yes'

file '/etc/resolv.conf' do
  content <<~S
    nameserver 8.8.8.8
    nameserver 8.8.4.4
  S
  mode '644'
end
