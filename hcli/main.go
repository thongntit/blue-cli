package main

import (
	"fmt"
	"log"
	"os"

	"github.com/thongntit/hcli/commands"
	"github.com/urfave/cli/v2"
)

func main() {
	fmt.Println("golang")
	app := &cli.App{
		Name:     "hcli",
		Usage:    "A cli program to bootstrap development process",
		HelpName: "hcli",
		Version:  "0.1.0",
		Commands: []*cli.Command{commands.Install, commands.Export, commands.Import, commands.Revert},
	}

	if err := app.Run(os.Args); err != nil {
		log.Fatal(err)
	}
}
