import Foundation

//MARK: Fisrt Problem

public func solution(_ A: inout [Int]) -> Int {
    
    let n = A.count
    let expectedSum = (n + 1) * (n + 2) / 2 //The expected sum of the sequence of this array
    let arrayActualSum = A.reduce(0, +) // Sum of elements in the array
    
    // The missing element is the difference between the expected sum and the actual sum
    let missingElement = expectedSum - arrayActualSum
    return missingElement
}



//Test Case

var A = [2, 3, 1, 5]

solution(&A)

