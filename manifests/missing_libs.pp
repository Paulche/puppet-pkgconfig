#
# This is list of missing .pc files on OS X 10.8.5.
#
# Usage:
#     include php
#
class pkgconfig::missing_libs
{
  file { '/usr/lib/pkgconfig/libxml-2.0.pc':
    ensure => present,
    source => 'puppet:///modules/pkgconfig/missing_libs/libxml-2.0.pc',
  }
  file { '/usr/lib/pkgconfig/libxslt.pc':
    ensure => present,
    source => 'puppet:///modules/pkgconfig/missing_libs/libxslt.pc',
  }
  file { '/usr/lib/pkgconfig/libexslt.pc':
    ensure => present,
    source => 'puppet:///modules/pkgconfig/missing_libs/libexslt.pc',
  }
  file { '/usr/lib/pkgconfig/libcurl.pc':
    ensure => present,
    source => 'puppet:///modules/pkgconfig/missing_libs/libcurl.pc',
  }
}
