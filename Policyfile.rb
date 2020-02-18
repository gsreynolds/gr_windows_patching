# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'gr_windows_patching'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'gr_windows_patching::default'
named_run_list :wsus_server, 'gr_windows_patching::wsus_server'
named_run_list :wsus_client, 'gr_windows_patching::wsus_client'

# Specify a custom source for a single cookbook:
cookbook 'gr_windows_patching', path: '.'
