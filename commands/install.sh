#!/bin/bash

CLI_WORKDIR=$1

cli_help() {
	echo "
Please specify setup type

Types:
    package      Install core packages
    plugin       Install plugins for packages

eg: ./thongrc setup package
  "
}

case "$2" in
  package)
    "$CLI_WORKDIR/commands/package.sh"
    ;;
  plugin)
    "$CLI_WORKDIR/commands/plugin.sh"
    ;;
  *)
    cli_help
    ;;
esac
