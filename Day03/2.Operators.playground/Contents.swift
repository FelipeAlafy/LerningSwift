var score1 = 8.0
var score2 = 10.0

// >
score1 > score2

// >=
score1 >= score2

// <
score1 < score2

// <=
score1 <= score1

// ==

score1 == score2
score1 == score1

// !=
score1 != score2

var user1win = score1 > score2
var user2win = score1 < score2

var age = 22
var inMajorityAge = age >= 18
var hasValidCNH = true

var ableToDrive = hasValidCNH && inMajorityAge
var ableToRideAsFrontSeat = inMajorityAge || ableToDrive


