directory "#{HOME}/.config" do
  owner USER
  group USER
end

directory "#{HOME}/.local" do
  owner USER
  group USER
end

directory "#{HOME}/.cache" do
  owner USER
  group USER
end
