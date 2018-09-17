//
//  main.swift
//  json parsing test
//
//  Created by 은서  장 on 2018. 9. 16..
//  Copyright © 2018년 은서  장. All rights reserved.
//

import Foundation

struct SeoulBike {
    var LEND_LC : String
    var LEND_NM : String
    var BASIC_DT : String
    var RTURN_CNT : String
    var LEND_CNT : String
}

var items2:[SeoulBike] = []
var items:[SeoulBike] = []
var item : [String] = []
//ivar item :SeoulBike = SeoulBike(LEND_LC: "a", LEND_NM: "b", BASIC_DT: "c", RTURN_CNT: "d", LEND_CNT: "f")

let url = URL(string: "http://openapi.seoul.go.kr:8088/63466141616a65733935694e426a4c/json/TB_PUBLIC_BCYCL_LEND_USE/1/5/")
let contents = try? String(contentsOf: url!)
let data = contents?.data(using: .utf8)

let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
var values:[String :Any] = json

let value = values["TB_PUBLIC_BCYCL_LEND_USE"] as! [String:Any]

let a = value["row"]! as! [Any]

    for valueIndex in a {
        

        for tem in valueIndex as! [String:String] {
           
            item.append(tem.value)
//
            
        }

        
    }
while item.count != 0 {
items.append(SeoulBike(LEND_LC: item.removeFirst(), LEND_NM: item.removeFirst(), BASIC_DT: item.removeFirst(), RTURN_CNT: item.removeFirst(), LEND_CNT: item.removeFirst()))
}

for i in items {
    if Int(i.RTURN_CNT)! >= 3 {
       items2.append(i)
    }
}

items2 = items2.sorted(by: {Int($0.RTURN_CNT)! < Int($1.RTURN_CNT)!})
for i in items2 {
    print("남은 바이크 : \(i.RTURN_CNT)  대여소명 : \(i.LEND_NM)")
}











