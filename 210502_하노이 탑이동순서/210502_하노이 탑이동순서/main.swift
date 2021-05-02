//
//  main.swift
//  210502_하노이 탑이동순서
//
//  Created by 정나래 on 2021/05/02.
//

import Foundation

let inputValue = Int(readLine()!)!
var moveArray:[String] = []
/**
 문제 :
 세 개의 장대가 있고 첫 번째 장대에는 반경이 서로 다른 n개의 원판이 쌓여 있다. 각 원판은 반경이 큰 순서대로 쌓여있다. 이제 수도승들이 다음 규칙에 따라 첫 번째 장대에서 세 번째 장대로 옮기려 한다.

 한 번에 한 개의 원판만을 다른 탑으로 옮길 수 있다.
 쌓아 놓은 원판은 항상 위의 것이 아래의 것보다 작아야 한다.
 이 작업을 수행하는데 필요한 이동 순서를 출력하는 프로그램을 작성하라. 단, 이동 횟수는 최소가 되어야 한다.
 */

// 타워에 있는 판을 움직일때 프린트 하는 함수
func towers(n: Int,first: Int = 1, second:  Int = 2, third: Int = 3){
    // n 이 1일때는 위에 판이 없기 때문에 바로 3번의 장대로 옮길수있다.
    if n == 1 {
        moveArray.append("\(first) \(third)")
    } else {
        // 남아있는 판의 갯수가 1이 될때까지
        towers(n: n-1, first: first, second: third, third: second)
        moveArray.append("\(first) \(third)")
        towers(n: n-1, first: second, second: first, third: third)
    }
}
// 갯수와 수행과정을 출력하는 함수
func callCount(n:Int,array:[String]) {
    towers(n: n)
    print("\(moveArray.count)")
    for i in 0...moveArray.count-1{
            print("\(moveArray[i])")
    }
}
callCount(n: inputValue, array: moveArray)
