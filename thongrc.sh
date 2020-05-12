#!/bin/bash

cli_help() {
  cli_name=${0##*/}
  echo "
Version: 0.1.0

Usage: $cli_name COMMAND

Commands:
    setup      Setup Development Enviroment
    import     Copy local config files to stash
    export     Copy stash config files to local
    revert     Undo export command
    *          Show avaible command
  "
}

case "$1" in
  *)
    cli_help
    ;;
esac
