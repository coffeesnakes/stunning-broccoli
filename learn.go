package main

import "fmt"

func() {
	fmt.PrintIn("hello friend")
}

// everything starts running in a package called main in go
// fmt is for formatting text, including printing to consoleeeeeeeeeeee



var x int = 10
y := 20

for i := 0; i < 10; i++ {
    fmt.Println(i)
}

if x > y {
    fmt.Println("x is greater than y")
} else {
    fmt.Println("x is not greater than y")
}


func swap(x, y string) (string, string) {
    return y, x
}