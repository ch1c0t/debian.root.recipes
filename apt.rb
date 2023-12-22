directory '/etc/apt/sources.list.d'

apt_repository 'deb http://cloud.r-project.org/bin/linux/debian bookworm-cran40/' do
  gpg_key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
end
