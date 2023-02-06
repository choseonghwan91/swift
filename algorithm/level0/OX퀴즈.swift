// 문제 설명
// 덧셈, 뺄셈 수식들이 'X [연산자] Y = Z' 형태로 들어있는 문자열 배열 quiz가 매개변수로 주어집니다. 
// 수식이 옳다면 "O"를 틀리다면 "X"를 순서대로 담은 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ quiz:[String]) -> [String] {
    func calc (_ operatorValue:Substring, _ value1:Int, _ value2:Int) -> Int {
        if operatorValue == "+" { return value1 + value2 }
        else { return value1 - value2 }
    }
    
    var answer : [String] = []
    
    for formula in quiz {
        let f = formula.split(separator: " ") // formula split
        if calc(f[1], Int(f[0]) ?? 0, Int(f[2]) ?? 0) == Int(f[4]) ?? 0 {
            answer.append(String("O"))
        } else {
            answer.append(String("X"))
        }
    }

    return answer
}

// 푼 방법은 별로지만,
// 옵셔널 타입을 풀어줄 때 ??와 디펄트 벨류로 지정할 수 있다는걸 배움