// 문제 설명
// my_string은 "3 + 5"처럼 문자열로 된 수식입니다. 
// 문자열 my_string이 매개변수로 주어질 때, 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_string:String) -> Int {
    func calc (_ oper: Substring, _ value1: Int, _ value2: Int) -> Int {
        if(oper == "+") { return value1 + value2 } 
        else { return value1 - value2 }
    }
    
    let f = my_string.split(separator: " ") // 수식 formula
    var result: Int = Int(f[0]) ?? 0
    for i in 1...f.count / 2 {
        let value = Int(f[i * 2]) ?? 0
        result = calc(f[(i * 2 - 1)], result, value)

    } 
    
    return result
}

// 옵셔널로 Int(f[0])! 과 같이 선언하면 런타임 오류 발생확률이 올라간다고 함
// 그냥 이건 맞는 값이다 라고 강제로 지정하는 내용
// 그러므로 if문으로 분기처리 해주거나
// ?? 0 으로 default 값을 설정해주면 된다고 함