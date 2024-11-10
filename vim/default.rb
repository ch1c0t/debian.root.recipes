remote_directory "#{HOME}/.vim" do
  source 'rc'
end

remote_file "#{HOME}/.local/bin/vim-helptags" do
  source 'helptags/script'
  mode '700'
end
