execute 'xargs -a /etc/mu/recipes/security/packages_to_remove apt remove -y'

service 'avahi-daemon' do
  action [:stop, :disable]
end

service 'avahi-daemon.socket' do
  action [:stop, :disable]
end
