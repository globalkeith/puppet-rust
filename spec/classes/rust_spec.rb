require 'spec_helper'

  describe 'rust' do
  context 'Mac OS i686' do
    let(:facts) do
      {
        :_hardware_identifier => 'i686'
      }
    end

    it do
      should contain_package('Rust').with({
        :provider => 'pkg',
        :source   => "https://static.rust-lang.org/dist/rust-nightly-i686-apple-darwin.pkg"
      })
    end
  end

  context 'Mac OS x86_64' do
    let(:facts) do
      {
        :_hardware_identifier => 'x86_64'
      }
    end

    it do
      should contain_package('Rust').with({
        :provider => 'pkg',
        :source   => "https://static.rust-lang.org/dist/rust-nightly-x86_6-apple-darwin.pkg"
      })
    end
  end
end
