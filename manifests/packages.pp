# Class: augeas::packages
#
# Sets up packages for Augeas
#
class augeas::packages {
  package { $::augeas::params::augeas_pkgs:
    ensure => $::augeas::version,
  }

  if $::augeas::manage_ruby {
    package { 'ruby-augeas':
      ensure => $::augeas::ruby_version,
      name   => $::augeas::ruby_package,
    }
  }
}
