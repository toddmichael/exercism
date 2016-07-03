package main

import (
	"flag"
	"fmt"

	"github.com/toddmichael/exercism/leap"
)

func main() {
	// Receive & parse command line input (-year=xxxx)
	var year = flag.Int("year", 0, "calendar year (e.g. 1999)")
	flag.Parse()

	if leap.IsLeapYear(*year) == true {
		fmt.Println(*year, "Is a leap year.")
	} else {
		fmt.Println(*year, "Is NOT a leap year.")
	}
}
