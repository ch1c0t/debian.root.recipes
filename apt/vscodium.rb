commands = """
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
apt update
"""

execute commands do
  not_if "test -f /usr/share/keyrings/vscodium-archive-keyring.gpg"
end

file "/etc/apt/sources.list.d/vscodium.list" do
  content "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main"
  mode '644'
end

package 'codium'
