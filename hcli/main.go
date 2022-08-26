package main

import (
    "log"
    "os"

    "github.com/urfave/cli/v2"
)

func main() {
    app := &cli.App{
        Flags: []cli.Flag{
            &cli.StringFlag{
                Name:    "lang",
                Aliases: []string{"l"},
                Value:   "english",
                Usage:   "language for the greeting",
                EnvVars: []string{"LEGACY_COMPAT_LANG", "APP_LANG", "LANG"},
            },
        },
    }

    if err := app.Run(os.Args); err != nil {
        log.Fatal(err)
    }
}