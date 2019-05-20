gpgkey {
  'baz1':
    ensure => present,
    name   => 'foo',
    gpgdir => '/root';
  '/root/bar':
    ensure => present;
  '/root/foo2':
    ensure => present;
}
