//
//  main.swift
//  210425_팩토리얼
//
//  Created by 정나래 on 2021/04/25.
//

import Foundation

/**
 문제
 0보다 크거나 같은 정수 N이 주어진다. 이때, N!을 출력하는 프로그램을 작성하시오.
 n! ->  n * n-1 * ... * 1 = ??

 */
let inputValues = Int(readLine()!)!

/// 재귀 함수 풀이
func factorial(Int: Int) -> Int {
    if Int == 0 || Int == 1{
        return 1
    }
    return Int * factorial(Int: Int - 1)
}

print(factorial(Int: inputValues))

/// for문 풀이
//func factorial(Int:Int) -> Int {
//    // 결과값은 무조건 1보다 클것
//    var result:Int = 1
//    if Int == 0 {
//        return 1
//    } else {
//        for MultipliedNum in result...Int{
//            result = result * MultipliedNum
//        }
//    }
//    return result
//}
