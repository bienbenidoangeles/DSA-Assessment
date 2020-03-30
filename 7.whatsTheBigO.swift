// Q7.
// What is the runtime of foo and bar in the following code? Explain your reasoning.
// Answer on canvas

func foo(arr: [Int]) {
  for val in arr {
    print(val)
  }
}

func bar(arr: [Int]) {
  for val in arr {
    foo(arr)
  }
  for val in arr {
    foo(arr)
  }
}
