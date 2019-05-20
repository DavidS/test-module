require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'gpgkey',
  docs: <<-EOS,
      This type provides Puppet with the capabilities to manage ...
    EOS
  title_patterns: [
    {
      pattern: %r{^(?<gpgdir>.*)/(?<name>[^/]*)$},
      desc: 'Where the gpgdir and the key_name is provided as the last field of the path',
    },
    {
      pattern: %r{^(?<name>.*)$},
      desc: 'Where only the key_name is provided, if using the default folder',
    },
  ],
  features: [],
  attributes: {
    ensure: {
      type:    'Enum[present, absent]',
      desc:    'Whether this resource should be present or absent on the target system.',
      default: 'present',
    },
    name: {
      type:      'String',
      desc:      'The name of the resource you want to manage.',
      behaviour: :namevar,
    },
    gpgdir: {
      type:    'String',
      desc:    'Path to store the GPG key.',
      default: '/root',
    },
  },
)
