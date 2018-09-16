//
//  main.swift
//  json parsing test
//
//  Created by 은서  장 on 2018. 9. 16..
//  Copyright © 2018년 은서  장. All rights reserved.
//

import Foundation


let url = URL(string: "http://openapi.seoul.go.kr:8088/63466141616a65733935694e426a4c/json/TB_PUBLIC_BCYCL_LEND_USE/1/10/")
let contents = try? String(contentsOf: url!)
let data = contents?.data(using: .utf8)

let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
var values:[String :Any] = json

let value = values["TB_PUBLIC_BCYCL_LEND_USE"] as! [String:Any]
//print(value)
let a = value["row"]! as! [Any]

    for valueIndex in a {
        for tem in valueIndex as! [String:String] {
            print("\(tem.key) : \(tem.value)")
        }
        print()
    }







