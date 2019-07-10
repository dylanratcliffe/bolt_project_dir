# This profile is included on all servers
class profile::base {
  include profile::base::security

  # OS specific base things
  case $facts['kernel'] {
    'windows': {
      include profile::base::windows
    }
    'linux': {
      include profile::base::linux
    }
    default: { fail('OS not supported') }
  }
}
