
func media(notas: Array<Double>) -> Double {
    var sum: Double = 0.0
    for i in notas {
        sum += i
    }
    return (sum / Double(notas.count))
}

print(media(notas: Array<Double>(arrayLiteral: 2.3, 9.7, 5.6)))

