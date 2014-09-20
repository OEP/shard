# shard

Load loose directories as an environment module.

Shard loads loose directories into common UNIX environment variables, like
`$PATH` and `$LD_LIBRARY_PATH`. Currently these are all that's supported,
though more could be.

It is mainly meant to be useful in user space for people who like to play fast
and loose with their environment. It is inspired by the [Environment Modules
Project][http://modules.sourceforge.net/].

## Installation and Usage

For a system wide install, put `shard.sh` in `/etc/profile.d` or some
equivalent for your distribution. Feel free to fully qualify

    install -m 0644 shard.sh /etc/profile.d/
    install -m 0755 shardcmd /usr/local/bin/

For a user install, source `shardinit.sh` while in this directory. In your
`~/.bashrc`, you could write

    pushd /path/to/shard >/dev/null
    . ./shardinit.sh
    popd >/dev/null

Once installed, you can load other paths by running

    shard load path

## Shard modules

Shard modules are just directories that follow a typical Linux filesystem
hierarchy described in `hier (7)`. Shard does the following things when finding
the subpaths in the provided `path` argument:

  lib/
    Appends the absolute path to `$LD_LIBRARY_PATH` and exports.
  
  bin/
    Appends the absolute path to `$PATH` and exports.

## Shells

Shard is meant to be compatible with `sh` type shells. More shells can be
supported should the need arise.
