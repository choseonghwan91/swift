// 문제 설명
// 등차수열 혹은 등비수열 common이 매개변수로 주어질 때, 
// 마지막 원소 다음으로 올 숫자를 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ common:[Int]) -> Int {
    let last = common[common.count - 1]
    let secondBack = common[common.count - 2]
    let gapF = common[1] - common[0]
    let gapR = last - secondBack
    
    if gapF == gapR { // 처음에 구한 차이랑 뒤에 구한 차이랑 같으면 등차
        return last + gapF
    } else {
        return (last / secondBack) * last // 등비면 맨뒤에서 나눠지는 숫자를 마지막 요소에 곱하면 됨
    }
}