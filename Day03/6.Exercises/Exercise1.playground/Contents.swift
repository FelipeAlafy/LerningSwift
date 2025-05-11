let expression = "What's the value of 8 x 2?"
let expectedResponse = 8 * 2
let usersAnswers = 16
var score = 0
if usersAnswers == expectedResponse {
    score += 1
} else {
    score -= 1
}

print("The user score was \(score)")
