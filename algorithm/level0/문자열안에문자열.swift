// 문제 설명
// 문자열 str1, str2가 매개변수로 주어집니다. 
// str1 안에 str2가 있다면 1을 없다면 2를 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let length = str2.count
    if(str1.count <= length) { return str1 == str2 ? 1 : 2 }
    
    for i in 0...str1.count - length {
        let startIdx = str1.index(str1.startIndex, offsetBy: i)
        let endIdx = str1.index(startIdx, offsetBy:length - 1)
        if str1[startIdx...endIdx] == str2 {
            return 1
        }
    }
    
    return 2
}

// --------------------------
// 다른 사람 답;;
import Foundation

func solution(_ str1:String, _ str2:String) -> Int { str1.contains(str2) ? 1 : 2 }