remote_file '/etc/apt/sources.list' do
  source 'sources.list'
  mode '644'
end

directory '/etc/apt/sources.list.d'

apt_repository 'deb https://cloud.r-project.org/bin/linux/debian bookworm-cran40/' do
  gpg_key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
end

package 'findutils'
package 'apt'

execute 'xargs -a /root/recipes/apt/package_list apt install -y'
