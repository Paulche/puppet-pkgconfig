require 'spec_helper'

describe 'pkgconfig' do
  it { should contain_package('gettext')      }
  it { should contain_package('pkg-config')   }

  context 'on 10.7.9' do
    it { should_not include_class('missing_libs') }
  end

  context 'on 10.8.0' do
    let(:facts) { {:macosx_productversion => '10.8.0'} }
    it { should include_class('pkgconfig::missing_libs') }
  end
  
  context 'on 10.8.5' do
    let(:facts) { {:macosx_productversion => '10.8.5'} }
    it { should include_class('pkgconfig::missing_libs') }
  end

  context 'on 10.8.9' do
    let(:facts) { {:macosx_productversion => '10.8.9'} }
    it { should include_class('pkgconfig::missing_libs') }
  end

  context 'on 10.9' do
    let(:facts) { {:macosx_productversion => '10.8.9'} }
    it { should include_class('pkgconfig::missing_libs') }
  end
  
  context 'on 10.9.1' do
    let(:facts) { {:macosx_productversion => '10.9.1'} }
    it { should include_class('pkgconfig::missing_libs') }
  end
end
