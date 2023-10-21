import Foundation


import Foundation

//MARK: Fisrt Problem

public func firstProblemSolution(_ A: inout [Int]) -> Int {
    
    let n = A.count
    let expectedSum = (n + 1) * (n + 2) / 2 //The expected sum of the sequence of this array
    let arrayActualSum = A.reduce(0, +) // Sum of elements in the array
    
    // The missing element is the difference between the expected sum and the actual sum
    let missingElement = expectedSum - arrayActualSum
    return missingElement
}



//Test Case

var A = [2, 3, 1, 5]

firstProblemSolution(&A)



//MARK: Second problem

public func secondProblemSolution(_ N: Int, _ A: inout [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    var maxCounter = 0
    var lastMaxCounter = 0
    
    for operation in A {
        if operation <= N {
            // Increase operation
            let counterIndex = operation - 1
            counters[counterIndex] = max(counters[counterIndex], lastMaxCounter) + 1
            maxCounter = max(maxCounter, counters[counterIndex])
        } else {
            // Max counter operation
            lastMaxCounter = maxCounter
        }
    }
    
    // Update counters for any remaining operations
    for i in 0..<counters.count {
        counters[i] = max(counters[i], lastMaxCounter)
    }
    
    return counters
}

// Example usage
var A2 = [3, 4, 4, 6, 1, 4, 4]
let N = 5
let result = secondProblemSolution(N, &A2)
print(result)



//MARK: Third Problem

public func thirdProblemSolution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counters = Array(repeating: 0, count: N)
    var maxCounter = 0
    var lastMaxCounter = 0
    
    for value in A {
        if value <= N {
            let index = value - 1
            counters[index] = max(counters[index], lastMaxCounter) + 1
            maxCounter = max(maxCounter, counters[index])
        } else {
            lastMaxCounter = maxCounter
        }
    }
    
    for i in 0..<N {
        counters[i] = max(counters[i], lastMaxCounter)
    }
    
    return counters
}

//Test Case

var A3 = [3, 4, 4, 6, 1, 4, 4]
let N3 = 5
print(thirdProblemSolution(N3, &A3))



