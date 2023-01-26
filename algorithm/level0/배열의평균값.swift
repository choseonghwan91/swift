// 문제 설명
// 정수 배열 numbers가 매개변수로 주어집니다. 
// numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ numbers:[Int]) -> Double {
    let langth = numbers.count
    let sum = numbers.reduce(0, { prev, curr in prev + curr})
    return Double(sum) / Double(langth)
}