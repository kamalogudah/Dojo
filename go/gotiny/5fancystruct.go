package main

import (
	"fmt"
)

type Saiyan struct {
	Name   string
	Power  int
	Father *Saiyan
}

func main() {

	fmt.Println("using a function")
	gohan := &Saiyan{
		Name:  "Gohan",
		Power: 1000,
		Father: &Saiyan{
			Name:   "Goku",
			Power:  9001,
			Father: nil,
		},
	}
	Super(gohan)
	fmt.Println(gohan.Power)
	fmt.Println(gohan.Father.Name)

}

func Super(s *Saiyan) {
	s.Power += 10000
	// s = &Saiyan{"Gohan", 1000}
}

func (s *Saiyan) Super() {
	s.Power += 10000
}
