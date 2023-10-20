import Foundation


//MARK: Second problem

public func solution(_ N: Int, _ A: inout [Int]) -> [Int] {
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
var A = [3, 4, 4, 6, 1, 4, 4]
let N = 5
let result = solution(N, &A)
print(result)




