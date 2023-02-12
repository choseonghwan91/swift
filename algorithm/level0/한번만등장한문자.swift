// 문제 설명
// 문자열 s가 매개변수로 주어집니다. 
// s에서 한 번만 등장하는 문자를 사전 순으로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요. 
// 한 번만 등장하는 문자가 없을 경우 빈 문자열을 return 합니다.

import Foundation

func solution(_ s:String) -> String {
    var arr = Array(s).sorted()
    var answer: [String] = []
    if arr.count >= 2 {
         if arr[0] != arr[1] { answer.append(String(arr[0])) }
    
        for i in 1..<arr.count - 1 {
            if arr[i] != arr[i-1] {
                if arr [i] != arr[i+1] {
                    answer.append(String(arr[i]))
                }
            }
        }
    
       if arr[arr.count-2] != arr[arr.count-1] { answer.append(String(arr[arr.count-1])) }
    } else { return s }
   
    return answer.joined()
}

// 억지로 끼워 맞춰서 풀었던거 같음. 문법 더 공부하고 간단하게 한번 고쳐봐야 됨