package main

import (
	"fmt"
)

type Saiyan struct {
	Name  string
	Power int
}

func main() {
	//	goku := Saiyan{
	//
	// Name: "Goku",
	// Power: 9000,
	// }
	fmt.Println("using a function")
	gokuu := &Saiyan{"Gokuu", 9000}
	Super(gokuu)
	fmt.Println(gokuu.Power)
	fmt.Println("functions on a structure")
	goku := &Saiyan{"Goku", 9001}
	goku.Super()
	fmt.Println(goku.Power) // will print 19001
	gokun := new(Saiyan)    //goku := &Saiyan{}
	gokun.Name = "goku"
	gokun.Power = 90018
	gokun.Super()
	fmt.Println(gokun.Power) // will print 19001
}

func Super(s *Saiyan) {
	s.Power += 10000
	// s = &Saiyan{"Gohan", 1000}
}

func (s *Saiyan) Super() {
	s.Power += 10000
}

// func NewSaiyan(name string, power int) *Saiyan {
// 	return &Saiyan{
// 		Name:  name,
// 		Power: power,
// 	}
// }
