execute '~/recipes/ollama/download.sh' do
  not_if 'test -e ~/.local/bin/ollama'
end
