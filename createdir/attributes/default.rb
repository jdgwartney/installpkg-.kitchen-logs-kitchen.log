data_dir = value_for_platform(
  "centos" => { "default" => "/srv/www/shared" },
  "ubuntu" => { "default" => "/srv/www/data" },
  "default" => "/srv/www/user_data"
)

config_dir = value_for_platform(
  "centos" => { "default" => "/srv/www/config" },
  "ubuntu" => { "default" => "/srv/www/configuration" },
  "default" => "/srv/www/conf"
)
default['createdir']['shared_dir'] = data_dir
default['createdir']['config_dir'] = config_dir
default['createdir']['mode'] = 0755
default['createdir']['owner'] = 'root'
default['createdir']['group'] = 'root'
