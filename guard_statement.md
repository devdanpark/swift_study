# guard 
- guard is used for early exit of the entire statement.
- For this reason, guard statement must include else block that blocks progress of the code.
``` swift
func divide(baseL Int) {

    guard gase != 0 else {
        print("not calculated")
        return
    }
    let result = 100 / base
    print(result)
}
```

``` swift
func divide(base: Int) {

    guard base != 0 else {
        print("not calculated")
        return
    }
    guard base > 0 else {
        print("base must be bigger than 0")
        return
    }
    guard base < 100 else {
        print("base must be less than 100")
        return
    }
    let result = 100 / base
    print(result)
}
```