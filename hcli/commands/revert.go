package commands

import "github.com/urfave/cli/v2"

var Revert = &cli.Command{
	Name:  "revert",
	Usage: "Undo export command",
}
