# Class: pkgconfig
#
# This module installs pkg-config dependency management tool.
# It also fixes missing *.pc files in /usr/lib/pkgconfig on OS X 10.8(Mountain Lion).
#
# Usage:
#
#     include pkgconfig
#
class pkgconfig {
  package {
    'gettext': ;
    'pkg-config':
      require => Package['gettext'];
  }

  if versioncmp($macosx_productversion, '10.8.5') == 0
  {
    include missing_libs
  }
}
