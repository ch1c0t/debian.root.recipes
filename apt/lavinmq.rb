commands = """
curl -fsSL https://packagecloud.io/cloudamqp/lavinmq/gpgkey | gpg --dearmor | tee /usr/share/keyrings/lavinmq.gpg > /dev/null
apt-get update
"""

execute commands do
  not_if "test -f /usr/share/keyrings/lavinmq.gpg"
end

file "/etc/apt/sources.list.d/lavinmq.list" do
  content "deb [signed-by=/usr/share/keyrings/lavinmq.gpg] https://packagecloud.io/cloudamqp/lavinmq/debian trixie main"
  mode '644'
end

package 'lavinmq'

execute """
systemctl disable lavinmq
systemctl stop lavinmq
"""
