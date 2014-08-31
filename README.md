puppet-dotdotdot
===========

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

