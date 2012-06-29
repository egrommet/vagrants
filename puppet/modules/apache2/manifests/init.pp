class apache2 {

  include guardian

  package { apache2: ensure => installed; }
  service { apache2: ensure => running; }

  Class["guardian"] ->
    Package["apache2"] ->
    Service["apache2"]
}