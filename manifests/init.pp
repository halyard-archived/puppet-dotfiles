class dotdotdot(
  $source = "/Users/${::boxen_user}/.dotdotdot.conf"
) {
  repository { 'dotdotdot repo':
    path    => "/Users/${::boxen_user}/...",
    source  => 'ingydotnet/...',
    require => Git::Config::Global['credential.helper']
  }

  exec { 'dotdotdot config':
    command => "/Users/${::boxen_user}/.../... conf ${source}",
    creates => "/Users/${::boxen_user}/.../conf",
    require => Repository['dotdotdot repo']
  }

  exec { 'dotdotdot update':
    command => "/Users/${::boxen_user}/.../... update",
    require => Exec['dotdotdot config']
  }

  exec { 'dotdotdot install':
    command => "/Users/${::boxen_user}/.../... install",
    require => Exec['dotdotdot update']
  }
}
