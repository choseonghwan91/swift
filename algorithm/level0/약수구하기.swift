// 문제 설명
// 정수 n이 매개변수로 주어질 때, 
// n의 약수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.

import Foundation

func solution(_ n:Int) -> [Int] {
    let sqrtValue = Int(sqrt(Double(n)))
    var answer: [Int] = []
    for i in 1 ... sqrtValue {
        if n % i == 0 {
            answer.append(i)
            answer.append(n / i)    
        }
    }
    
    return Set(answer).sorted()
}

// 전체를 확인하여 약수를 구하는거는 쉬움,
// 하지만 효율적으로 약수를 구하기 위해서는 약수를 구하는 공식을 쓰면 더 좋을것 같았음
// 1. 약수 구하는 방법은 n의 제곱근을 구한다
// 2. 제곱근 만큼만 하나씩 반복해서 나머지가 0인걸 찾는다
// 3. 찾은 숫자를 n에 나눈다
// 4. 찾은 숫자 + n에 나눈거를 반환한다
// 로 최대한 적은 반복으로 구할수 있다.
// 반복문을 돌때 나머지가 0인것과 그 수를 n에 나눈걸 같이 더해주면 반복할걸 절반으로 줄일수 있다
// Set을 사용한 이유는 중복을 제거 하려고 사용(i와 n/i 가 같으면의 조건을 추가하려고 했는데 매 루프마다 연산을 하는거보다 Set을 사용하는게 괜찮다 생각했는데 이건 효율성 테스트를 해봐야 될거 같음)
// 정렬해서 반환
