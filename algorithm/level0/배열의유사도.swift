// 문제 설명
// 두 배열이 얼마나 유사한지 확인해보려고 합니다. 
// 문자열 배열 s1과 s2가 주어질 때 같은 원소의 개수를 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var answer = 0
    
    for i in s1 {
        for j in s2 {
            if i == j {
                answer += 1
            }
        }
    }
    
    return answer
}