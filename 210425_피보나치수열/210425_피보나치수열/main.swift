//
//  main.swift
//  210425_피보나치수열
//
//  Created by 정나래 on 2021/04/25.
//

import Foundation
/**
 문제

 피보나치 수는 0과 1로 시작한다. 0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다. 그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.

 이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n ≥ 2)가 된다.

 n=17일때 까지 피보나치 수를 써보면 다음과 같다.

 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597

 n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오.

 n = n-1 + n-2

 */

/// 재귀를 활용한 문제 풀이
let inputValue = Int(readLine()!)!
func fibonacci(values:Int) -> Int {
    if values == 0 {
        return 0
    } else if values == 1 {
        return 1
    } else if values == 2 {
        return 1
    }
    // input value값이 2이상인 경우
    return fibonacci(values: values - 1) + fibonacci(values: values - 2)
}

print(fibonacci(values: inputValue))

/// for문을 활용한 문제 풀이
//func fibonacci(values:Int) -> Int {
//    // 0번째 피보나치의 수는 0, 1번째 피보나치의 수는 1
//       var fibonacciArray: [Int] = [0,1]
//       for i in 0...values{
//           if i == 0 || i == 1 {
//               continue
//           } else {
//            // input value값이 2이상인 경우
//            fibonacciArray.append(fibonacciArray[i-1] + fibonacciArray[i-2])
//           }
//       }
//       return fibonacciArray[values]
//}
//print(fibonacci(values: inputValue))
