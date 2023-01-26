// 문제 설명
// 정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.

import Foundation

func solution(_ n:Int) -> Int {
    var answer : Int = Int()
    
    for num in 1 ... n {
        if(num % 2 == 0) {
            answer = answer + num
        }
    }
    
    return answer
}

print(solution(10))
print(solution(4))