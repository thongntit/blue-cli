package commands

import "github.com/urfave/cli/v2"

var Install = &cli.Command{
	Name:        "install",
	Usage:       "Setup Development Enviroment",
	Subcommands: []*cli.Command{Package, Plugin},
}
