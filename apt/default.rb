remote_file '/etc/apt/sources.list' do
  source 'sources.list'
  mode '644'
end

directory '/etc/apt/sources.list.d'

package 'findutils'
package 'apt'

execute 'xargs -a /root/recipes/apt/package_list apt install -y'

include_recipe 'vscodium'
include_recipe 'lavinmq'
