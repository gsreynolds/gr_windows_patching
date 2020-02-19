node.default['wsus_client']['automatic_update_behavior'] = :install

include_recipe 'wsus-client::configure'
# Update recipe will not work over WinRM
# include_recipe 'wsus-client::update' unless ENV['TEST_KITCHEN']
