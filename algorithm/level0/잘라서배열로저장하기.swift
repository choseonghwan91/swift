// 문제 설명
// 문자열 my_str과 n이 매개변수로 주어질 때, 
// my_str을 길이 n씩 잘라서 저장한 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var arr: [String] = []
    let lastLoop = Int(ceil(Double(my_str.count) / Double(n)))
    
    for i in 0..<lastLoop {
        let idxS = my_str.index(my_str.startIndex, offsetBy: i * n)
        if(my_str.count / n == i) {
            let idxE = my_str.index(idxS, offsetBy: my_str.count % n )
            arr.append(String(my_str[idxS..<idxE]))
        } else {
            let idxE = my_str.index(idxS, offsetBy: n )    
            arr.append(String(my_str[idxS..<idxE]))
        }
    }
    
    return arr
}