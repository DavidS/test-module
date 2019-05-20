require 'spec_helper'
require 'puppet/type/gpgkey'

RSpec.describe 'the gpgkey type' do
  it 'loads' do
    expect(Puppet::Type.type(:gpgkey)).not_to be_nil
  end
end
