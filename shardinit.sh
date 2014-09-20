#
# shardinit.sh
#
# This is meant as a convenience for users who can't or won't install shard
# system-wide. It bootstraps the shard script into your path.
#
# It is meant to be sourced while in the containing directory.
#
. ./shard.sh
PATH="bin:${PATH}" shard load .
