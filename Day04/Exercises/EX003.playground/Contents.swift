func restaurantBillDivider(bill: Double, people: Int) -> Double {
    var totalBill = bill * 1.1
    return (totalBill / Double(people))
}

print(restaurantBillDivider(bill: 1100, people: 10))
