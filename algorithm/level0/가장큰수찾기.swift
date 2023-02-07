// 문제 설명
// 정수 배열 array가 매개변수로 주어질 때, 
// 가장 큰 수와 그 수의 인덱스를 담은 배열을 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ array:[Int]) -> [Int] {
    var result: [Int] = [0, 0]
    for i in 0..<array.count {
        if array[i] > result[0] {
            result[0] = array[i]
            result[1] = i
        }
    }
    return  result
}