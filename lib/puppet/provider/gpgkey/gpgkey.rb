require 'puppet/resource_api/simple_provider'

# Implementation for the gpgkey type using the Resource API.
class Puppet::Provider::Gpgkey::Gpgkey < Puppet::ResourceApi::SimpleProvider
  def get(context, name = [])
    context.debug('Returning pre-canned example data for: %s' % name.inspect)
    [
      {
        title: '/root/foo',
        name: 'foo',
        gpgdir: '/root',
        ensure: 'present',
      },
      {
        title: '/root/bar',
        name: 'bar',
        gpgdir: '/root',
        ensure: 'present',
      },
    ]
  end

  def create(context, name, should)
    context.notice("Creating '#{name}' with #{should.inspect}")
  end

  def update(context, name, should)
    context.notice("Updating '#{name}' with #{should.inspect}")
  end

  def delete(context, name)
    context.notice("Deleting '#{name}'")
  end
end
