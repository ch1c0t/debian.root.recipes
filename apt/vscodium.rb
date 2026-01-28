commands = """
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
apt-get update
"""

execute commands do
  not_if "test -f /usr/share/keyrings/vscodium-archive-keyring.gpg"
end

file "/etc/apt/sources.list.d/vscodium.sources" do
  content "Types: deb\nURIs: https://download.vscodium.com/debs\nSuites: vscodium\nComponents: main\nArchitectures: amd64 arm64\nSigned-by: /usr/share/keyrings/vscodium-archive-keyring.gpg"
  mode '644'
end

package 'codium'
