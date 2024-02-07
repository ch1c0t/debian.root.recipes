git :sync do
  not_if "test -d #{HOME}/.nvm"
  repository 'https://github.com/nvm-sh/nvm'
  destination "#{HOME}/.nvm"
end

execute 'zsh -c "source ~/.config/zsh/nvm.sh && nvm install lts/iron"' do
  not_if 'command -v node'
end
