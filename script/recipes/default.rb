bash "install_something" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    touch somefile
  EOH
  not_if do
    File.exists?("/tmp/somefile")
  end
end

cookbook_file "/tmp/hello-world.sh" do
  source "hello-world.sh"
  mode 0755
end

execute "hello-world.sh" do
  user "root"
  cwd "/tmp"
  command "./hello-world.sh"
end
