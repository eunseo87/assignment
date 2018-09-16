////
////  main.swift
////  json ek test
////
////  Created by 은서  장 on 2018. 9. 16..
////  Copyright © 2018년 은서  장. All rights reserved.
////
//
import Foundation
//
//```1. 이번주 과제로 풀었던 모든 함수를 클로저로 만들어 변수에 담고 실행시켜보기.
//단, 변수에 타입추론을 사용하지 않고 반드시 명시하고 함수를 담을 것.

//func reverseDigit(num: Int) -> Int {
//    var reversedNumber = 0
//    var num = num
//
//    while num > 0 {
//        reversedNumber = reversedNumber * 10 + num % 10
//        num /= 10
//        print(reversedNumber)
//    }
//
//    return reversedNumber
//}
////let closureParameter =
////{ (str: String) -> Int in
////    return str.count
////}
//
//
//let reverseClosure: (Int) -> Int = { (num: Int) -> Int in
//    var reversedNumber = 0
//    var num = num
//
//    while num > 0 {
//        reversedNumber = reversedNumber * 10 + num % 10
//        num /= 10
//        print(reversedNumber)
//    }
//    return reversedNumber
//}

reverseClosure(123)
//2. 아래 두 클로저를 Syntax Optimization을 이용하여 코드를 최대한 줄여보기
//
let someClosure: (String, String) -> Bool = {$0 > $1}


let otherClosure: ([Int]) -> Int = {
    return $0.count
}

//3. 1에서 100까지 Int값으로 구성된 배열을 필터링을 하여 새 배열을 반환하는 함수를 만들고자 한다.
//Int를 하나 입력받고 Bool타입의 값을 반환하는 함수로 만들고, 함수를 호출할 때 적절한 클로저를
//넣어주어 아래와 같은 조건으로 필터링된 배열을 반환받을 수 있도록 구현

//- 짝수만 나오도록 필터링
//- 3의 배수만 나오도록 필터링


var arr:[Int] = []

for item in 0...99 {
    arr.append(item+1)
    //print(arr[item])
}

func even(num:Int) -> Bool {
    return num % 2 == 0
}
let evenNum = arr.filter { (num:Int)->Bool in return num % 2 == 0 }
let tripleNum = arr.filter{$0 % 3 == 0}
//print(evenNum)


////```4. 3개의 옵셔널타입의 문자열을 입력받아 옵셔널을 추출한 뒤 3개의 문자를 하나의 문자로 합쳐 반환하는 함수
//
func getString(str1: String?, str2: String?, str3: String?) -> String {
    // implementation

    if let s1 = str1,let s2 = str2, let s3 = str3 {
        let total = s1 + s2 + s3
        return total
    }
    return "Nil"
    
}

//print(getString(str1: nil, str2: "q", str3: "b"))
