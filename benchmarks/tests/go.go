package main

import "fmt"
import "os/exec"
import "strconv"


type SomeObject struct {
  name string
}

func (this SomeObject) display() {
  fmt.Println("name is:", this.name)
}

func execCommand(command string) int {
  output, err := exec.Command("ruby", command).Output()
  if (err != nil) {
    fmt.Printf("%s executing %s.", err, command)
  }
  i, err := strconv.Atoi(string(output[:len(output)-1]))
  if (err != nil) {
    fmt.Printf("Can not parse %s.\n", output)
  }
  return i
}

func main() {
  startFreeRam := execCommand("free-ram.rb")
  startTime := execCommand("timestamp.rb")

  const total = 10000000
  var a [total]SomeObject
  for i := 0; i < total; i++ {
    a[i] = SomeObject{name: "tere"}
  }

  endFreeRam := execCommand("free-ram.rb")
  endTime := execCommand("timestamp.rb")

  fmt.Printf("Go used %sMB and ran %s seconds.\n", strconv.Itoa(startFreeRam-endFreeRam), strconv.Itoa(endTime-startTime))
}
