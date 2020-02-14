**Deprecation Notice:** I'm in the process of revamping my puppet work, this repo is currently not up to date.

puppet-dotfiles
===========

[![Puppet Forge](https://img.shields.io/puppetforge/v/halyard/dotfiles.svg)](https://forge.puppetlabs.com/halyard/dotfiles)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)
[![Build Status](https://img.shields.io/travis/com/halyard/puppet-dotfiles.svg)](https://travis-ci.com/halyard/puppet-dotfiles)

Module to set my dotfiles using [...](https://github.com/ingydotnet/...)

## Usage

In your Hiera config:

```
dotfiles::source: 'https://example.com/your/dotdotdot.conf'
```

```puppet
include dotfiles
```

## Required Puppet Modules


