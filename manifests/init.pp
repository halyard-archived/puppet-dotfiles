# Configure dotfiles using ...
class dotfiles (
  $source = "${dotfiles::homedir($::id)}/.dotdotdot.conf"
) {
  $homedir = dotfiles::homedir($::user)
  $ddd = "${homedir}/..."

  package { [
    'bash',
    'bash-completion',
    'tree',
    'pick-halyard'
  ]:
    require => Homebrew::Tap['halyard/formulae']
  }

  package { 'font-meslo-lg-for-powerline-halyard':
    provider => 'brewcask',
    require  => Homebrew::Tap['halyard/casks']
  }

  ruby_gem { ['hss', 'gist']: }

  file { '/usr/local/bin':
    ensure => directory,
    owner  => $::user,
    group  => 'staff'
  }

  repository { 'dotdotdot repo':
    path    => $ddd,
    source  => 'akerl/...',
    require => Git::Config::Global['credential.helper']
  } ->
  exec { 'dotdotdot config':
    command  => "${ddd}/... conf ${source}",
    creates  => "${ddd}/conf",
    provider => 'shell'
  } ->
  exec { 'dotfile upgrade':
    command  => "${ddd}/... install",
    provider => 'shell',
    onlyif   => "${ddd}/... super_update 2>&1 | grep '^From'"
  } ~>
  exec { 'vundle install':
    command     => 'vim +PluginInstall +qall',
    refreshonly => true
  }
}
