node.default['wsus_server']['setup'].tap do |setup|
  setup['content_dir'] = 'D:\WSUS'
end

# only enable updates for windows 2016 & 2019
node.default['wsus_server']['subscription'].tap do |subscription|
  subscription['categories'] = ['Windows Server 2016', 'Windows Server 2019']
  subscription['classifications'] = ['Critical Updates', 'Security Updates', 'Definition Updates']
end

include_recipe 'wsus-server::default'
include_recipe 'wsus-server::freeze' unless node['wsus_server']['freeze']['name'].nil?
include_recipe 'wsus-server::report_viewer'
