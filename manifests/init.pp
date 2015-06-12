class dotfiles (
  $source = "${dotfiles::homedir($::id)}/.dotdotdot.conf"
) {
  $homedir = dotfiles::homedir($::boxen_user)

  package { [
    'bash',
    'bash-completion',
    'ctags',
    'tree'
  ]: }

  package { 'font-meslo-lg-for-powerline-halyard':
    provider => 'brewcask',
    require  => Homebrew::Tap['halyard/casks']
  }

  repository { 'dotdotdot repo':
    path    => "${homedir}/...",
    source  => 'ingydotnet/...',
    require => Git::Config::Global['credential.helper']
  } ->
  exec { 'dotdotdot config':
    command => "${homedir}/.../... conf ${source}",
    creates => "${homedir}/.../conf"
  } ->
  exec { 'dotdotdot upgrade':
    command => "${homedir}/.../... update",
    provider => 'shell'
  } ->
  exec { 'vundle install':
    command => "vim +PluginInstall +qall",
    creates => "${homedir}/.vim/bundle/DetectIndent/README"
  }
}
