//In swift for loops works with intervals, so previous knloadgements that we got last file, must be useful here as well.
for i in 0..<10 {
    print("\(i+1) Hello, World!")
}

//Another Example, but with omitted i
for _ in 1...10 {
    print("I love swift")
}

//While loop, doesn't have a auto declare variable like for has, but it is useful when doing input verification from user.
var count = 0

while count < 20 {
    print("Hello Love")
    count += 2
}

// repeat while, do the check after the execution
count = 0
repeat {
    print(count)
    count += 2
} while count < 10

//Practical Example
var sum = 0
for i in 1...10 {
    sum += i
}
print("Sum, between 1 and 10 is \(sum)")

// exercise
sum = 1
count = 0

repeat {
    sum += 3
    count += 1
} while count < 5
            
print("The sum is \(sum)")


//Using break
// the command break, is used to break a loop at certain moment. for example:
count = 20
while count >= 10 {
    print("counting \(count)")
    if count % 2 == 1 {
        print("Breaking")
        break
    }
    count -= 1
}

//Using continue
// the command continue, skips all source code that are below of it, jumping for the next iteration.
count = 0
while count <= 20 {
    print("\(count)")
    count += 1
    if count % 2 != 0 {
        print("Odd founded, skiping")
        continue
    }
}
