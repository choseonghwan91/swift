// 문제 설명
// 머쓱이는 행운의 숫자 7을 가장 좋아합니다. 
// 정수 배열 array가 매개변수로 주어질 때, 7이 총 몇 개 있는지 return 하도록 solution 함수를 완성해보세요.

import Foundation

func solution(_ array:[Int]) -> Int {
    var count : Int = 0
    var str = String()
    
    for n in array {
        str += String(n)
    }
    
    for s in str {
        if s == "7" {
            count += 1
        }
    }
    
    return count
}

// 아직 맵이나 다른 매서드들을 사용하는 방법에 익숙치 않아서 for문으로 해결

// 아래의 방법으로 푸는게 제일 마음에 드는것 같음

// func solution(_ array:[Int]) -> Int {
//     return array.map{String($0)}.joined().filter{$0 == "7"}.count
// }