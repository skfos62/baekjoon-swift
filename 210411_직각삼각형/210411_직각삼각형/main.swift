//
//  main.swift
//  210411_직각삼각형
//
//  Created by 정나래 on 2021/04/11.
//
import Foundation
/**
 문제 :
 과거 이집트인들은 각 변들의 길이가 3, 4, 5인 삼각형이 직각 삼각형인것을 알아냈다. 주어진 세변의 길이로 삼각형이 직각인지 아닌지 구분하시오.

 문제해결:
 피타고라스의 정리를 이용하여서 답 구하기

 */

while true {
    let input = (readLine() ?? "").split { $0 == " " }.compactMap { Int($0) }.sorted()
    // input 값이 0일 경우
    if input.reduce(0, +) == 0 { break }
    // input 값이 0이 아닐경우
    // 피타고라스의 정리를 이용해여 직각삼각형 구하기
    // a^2 + b^2 = c^2
    if input[0]*input[0] + input[1]*input[1] == input[2]*input[2] || input[0]*input[0]  + input[2]*input[2] == input[1]*input[1] || input[1]*input[1] + input[2]*input[2]  == input[0]*input[0] {
        print("right")
    } else {
        print("wrong")
    }
}

