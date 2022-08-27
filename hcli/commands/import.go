package commands

import "github.com/urfave/cli/v2"

var Import = &cli.Command{
	Name:  "import",
	Usage: "Copy local config files to stash",
}
