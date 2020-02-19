include_recipe 'wsus-client::configure'
# Update receipe will not work over WinRM
include_recipe 'wsus-client::update' unless ENV['TEST_KITCHEN']
