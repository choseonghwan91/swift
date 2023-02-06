// 문제 설명
// 정수 num과 k가 매개변수로 주어질 때, 
// num을 이루는 숫자 중에 k가 있으면 num의 그 숫자가 있는 자리 수를 return하고 없으면 -1을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let numList = Array(String(num))
    
    for i in 0..<numList.count {
        if Int(String(numList[i])) == k {
            return i + 1
        }
    }
    return -1
}