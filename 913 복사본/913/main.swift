//
//  main.swift
//  913
//
//  Created by 은서  장 on 2018. 9. 13..
//  Copyright © 2018년 은서  장. All rights reserved.
//

import Foundation

//1.
//자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//ex) 123 -> 321 , 10293 -> 39201
//
func m1(x:Int) {
    var arr:[Int] = []
    
    var temp: Int = x
    while temp  != 0 {
         arr.append(temp % 10)
        temp /= 10
    }
    var total :Int = 0
    for item in 1...arr.count+1 {
        if var arra = arr.popLast() {
            
            for ite in 1...item {
                if ite == 1 {
                    continue
                }
                arra *= 10
            }
            total += arra
        }
    }
   print(total)
    
    
}
m1(x: 45627)
//2.
//2개의 자연수와 사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입을 입력받아 해당 연산을 수행하는 함수
//enum Arithmetic {
//    case addition, subtraction, multiplication, division
//}
//
//3.
//정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
//ex) [50, 23, 29, 1, 45, 39, 59, 19, 15] -> 59
//
func m3() -> Int{
    let arr: [Int] = [50, 23, 29, 1, 45, 39, 59, 19, 15]
    
    return arr.max()!
}
print(m3())
//4.
//정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
//ex) [1, 2, 4, 8, 9, 12, 13] , [2, 5, 6, 9, 13]  -->  [2, 9, 13]

func m4() -> Set<Int> {
    let arr1: Set = [1,2,4,8,9,12,13]
    let arr2: Set = [2,5,6,9,13]
   
    let temp = arr1.intersection(arr2)
    
    return temp
}
print(m4())

