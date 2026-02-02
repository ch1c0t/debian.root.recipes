file '/etc/resolv.conf' do
  content <<~S
    nameserver 8.8.8.8
    nameserver 8.8.4.4
  S
  mode '644'
end
