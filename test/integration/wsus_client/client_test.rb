# InSpec test for recipe gr_windows_patching::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

%w(KB4520724 KB4537764).each do |kb|
  describe windows_hotfix(kb) do
    it { should be_installed }
  end
end

# describe powershell('Get-WindowsUpdateLog') do
#   its('stdout') { should match 'WindowsUpdate.log written to C:\Users\Administrator\Desktop\WindowsUpdate.log' }
# end

# describe file('C:\Users\Administrator\Desktop\WindowsUpdate.log') do
#   it { should exist }
#   its('content') { should match /content/ }
# end
