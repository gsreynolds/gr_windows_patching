#
# Cookbook:: gr_windows_patching
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'gr_windows_patching::wsus_client' do
  context 'When all attributes are default, on Windows 2016' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'windows', '2016'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end

describe 'gr_windows_patching::wsus_server' do
  context 'When all attributes are default, on Windows 2016' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'windows', '2016'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
