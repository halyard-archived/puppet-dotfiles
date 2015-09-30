puppet-dotdotdot
===========

[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)
[![Build Status](https://img.shields.io/circleci/project/halyard/puppet-dotfiles.svg)](https://circleci.com/gh/halyard/puppet-dotfiles)

Module to set my dotfiles using [...](https://github.com/ingydotnet/...)

## Usage

In your Hiera config:

```
dotdotdot::source: 'https://example.com/your/dotdotdot.conf'
```

```puppet
include dotdotdot
```

## Required Puppet Modules

* `boxen`

