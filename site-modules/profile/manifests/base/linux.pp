# Class: profile::base::linux
#
#
class profile::base::linux (
  Array $extra_packages = [],
) {
  $main_packages = [
    'vim',
    'tree',
    'htop',
  ]

  # Install both the main and extra packages
  package { ($main_packages + $extra_packages):
    ensure => 'present',
  }
}
