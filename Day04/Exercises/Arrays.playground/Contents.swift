// If you want to create a variable that holds many values from a single data type, you must be in love with arrays.
// var arrayName: [DATA_TYPE_INSIDE_OF_BRACKETS] = [VALUE1, VALUE2, VALUE3, VALUE4...]
var examesScores: [Double] = [8.5, 9.0, 3.9, 6.0]

// If you want to access certain element from that declare, just count where it is from 0 to last. for example
print(examesScores[0]) //Access the first element.
print(examesScores[1]) //Access the second element.
print(examesScores[2]) //Access the third element.
print(examesScores[3]) //Access the fourth element.
//...


//You can easely iterate through an array with for loops:
var sum: Double = 0.0
for i in examesScores {
    sum += i
}

print("The sum of the scores is \(sum)")

//Creating empty arrays
var emptyArray = Array<String>()
var emptyArray2: [String] //This type of declaretion will not work with an explicit assignment of values.

emptyArray.isEmpty
//emptyArray2.isEmpty // -> result in a compilation error.

//There is a method to insert new items into an already created array, .append(value)
examesScores.append(2.1)
print(examesScores.last ?? 0.0)

//Another way to insert an element at any desired position is by using the method, .insert(value, at: positon)
examesScores.insert(5.3, at: 2)
for i in examesScores {
    print(i)
}

//For last but not least, there is also another way to insert a value at the end of an array. arrayName += [value]
examesScores += [7.9]

print(examesScores.last ?? 0.0)

//There is also a method to remove the lastest element of an array, with the method, .removeLast()
examesScores.removeLast()
for i in examesScores {
    print(i)
}
//there is of course a method .removeFirst(), you may guess what it does.
//Removing at an specific position with method, .remove(at: position)
examesScores.remove(at: 3)
for i in examesScores {
    print(i)
}

//Getting an element and also an index with method .enumerated()
for (index, element) in examesScores.enumerated() {
    print(element == examesScores[index])
}
