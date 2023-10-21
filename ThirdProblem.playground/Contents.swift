import Foundation

//MARK: Third Problem

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
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

var A = [3, 4, 4, 6, 1, 4, 4]
let N = 5
print(solution(N, &A))
