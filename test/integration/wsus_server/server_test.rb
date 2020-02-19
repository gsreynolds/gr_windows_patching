# InSpec test for recipe gr_windows_patching::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe service('W3SVC') do
  it { should be_running }
end

describe service('WsusService') do
  it { should be_running }
end

describe port(8530) do
  it { should be_listening }
end

script = <<-EOH
  [Reflection.Assembly]::LoadWithPartialName('Microsoft.UpdateServices.Administration') | Out-Null
  $wsus = [Microsoft.UpdateServices.Administration.AdminProxy]::GetUpdateServer()
  ($wsus.GetComputerTargetGroups() | where Name -eq 'kitchen_windows2016'| Measure-Object).Count -eq 1
EOH

describe powershell(script) do
  its('strip') { should eq 'True' }
end
