// 문제 설명
// 정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요

import Foundation

func solution(_ n:Int) -> Int {
    return Array(String(n)).reduce(0, {$0 + Int(String($1))!})
}

// Character 타입은 바로 Int로 변환이 불가능 한거 같음