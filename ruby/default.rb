ruby_version = '3.3.0'

directory "#{HOME}/opt/src"
directory "#{HOME}/.rubies"

git :sync do
  not_if "test -d #{HOME}/opt/src/ruby-build"
  repository 'https://github.com/rbenv/ruby-build'
  destination "#{HOME}/opt/src/ruby-build"
end

execute "cd #{HOME}/opt/src/ruby-build && PREFIX=#{HOME}/opt ./install.sh" do
  not_if "test -f #{HOME}/opt/bin/ruby-build"
end

execute "cd #{HOME}/opt/bin && ./ruby-build #{ruby_version} ~/.rubies/#{ruby_version}" do
  not_if "test -d #{HOME}/.rubies/#{ruby_version}"
end

git :sync do
  not_if "test -d #{HOME}/opt/src/chruby"
  repository 'https://github.com/postmodern/chruby'
  destination "#{HOME}/opt/src/chruby"
end

execute "cd #{HOME}/opt/src/chruby && PREFIX=#{HOME}/opt make install" do
  not_if "test -f #{HOME}/opt/bin/chruby-exec"
end
