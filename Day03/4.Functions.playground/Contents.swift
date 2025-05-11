// Declaring Functions must be done by func functionName(parameter: DataType, ...) -> returnType { ... }
func sum(_ a: Int, _ b: Int) -> Int{
    let result = a + b
    return result
}

//Calling
print(sum(5, 3))

//See below an example of function without return
func checkMajorityAge(_ age: Int) {
    if age > 17 {
        print("Adult.")
        return
    }
    print("teenager or child yet.")
}

checkMajorityAge(17)
checkMajorityAge(9)
checkMajorityAge(20)

//At some point you will want to edit data from parameters reviced, you must not be able to do that. Because, when a function is called your program in fact create a variable for each parameter and copy the outside contents into the new variable, and they are declared as let. If you want to modify it any way, you will be able to do that by using the clause inout before the Data Type, and it will require to be passed an memory address istead of a simple variable when calling, but this is as easy as puting an & before the name of the variable. See:
func sumNumber(_ num: inout Int) {
    num += 1
    print(num)
}

var value = 10
sumNumber(&value)
print(value) //Notice that, after the calling the value will be modified inside of the function as well as outside (global scope in this case).

