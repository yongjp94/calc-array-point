//
//  main.swift
//  calc-array-points
//
//  Created by iGuest on 10/12/17.
//  Copyright © 2017 yongjp94. All rights reserved.
//

import Foundation

func add(x: Int, y: Int) -> Int {
    return x + y
}

func subtract(x: Int, y: Int) -> Int {
    return x - y
}

func multiply(x: Int, y: Int) -> Int {
    return x * y
}

func divide(x: Int, y: Int) -> Int {
    return x / y
}

func mathOperation(x: Int, y: Int, op: (Int, Int) -> Int) -> Int {
    return op(x, y)
}

func add(arr: [Int]) -> Int {
    var sum: Int = 0
    for i in 0...arr.count-1 {
        sum += arr[i]
    }
    return sum
}

func multiply(arr: [Int]) -> Int {
    var prod: Int = 1
    for i in 0...arr.count-1 {
        prod *= arr[i]
    }
    return prod
}

func count(arr: [Int]) -> Int {
    return arr.count
}

func avg(arr: [Int]) -> Double {
    return Double(add(arr: arr))/Double(count(arr: arr))
}

func reduce( array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (add(x: p1.0, y: p2.0), add(x: p1.1, y: p2.1))
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (subtract(x: p1.0, y: p2.0), subtract(x: p1.1, y: p2.1))
}

func add(p1: [String : Int], p2: [String: Int]) -> [String: Int]? {
    if (p1 == nil || p2 == nil || p1["x"] == nil || p2["x"] == nil || p1["y"] == nil || p2["y"] == nil) {
        return nil
    }
    return ["x": add(x: p1["x"]!, y: p2["x"]!), "y": add(x: p1["y"]!, y: p2["y"]!)]
}

func subtract(p1: [String : Int], p2: [String: Int]) -> [String: Int]? {
    if (p1 == nil || p2 == nil || p1["x"] == nil || p2["x"] == nil || p1["y"] == nil || p2["y"] == nil) {
        return nil
    }
    return ["x": subtract(x: p1["x"]!, y: p2["x"]!), "y": subtract(x: p1["y"]!, y: p2["y"]!)]
}

func add(p1: [String : Double]?, p2: [String: Double]?) -> [String: Double]? {
    if (p1 == nil || p2 == nil || p1!["x"] == nil || p2!["x"] == nil || p1!["y"] == nil || p2!["y"] == nil) {
        return nil
    }
    return ["x": Double(add(x: Int(p1!["x"]!), y: Int(p2!["x"]!))), "y": Double(add(x: Int(p1!["y"]!), y: Int(p2!["y"]!)))]
}

func subtract(p1: [String : Double], p2: [String: Double]) -> [String: Double]? {
    if (p1 == nil || p2 == nil || p1["x"] == nil || p2["x"] == nil || p1["y"] == nil || p2["y"] == nil) {
        return nil
    }
    return ["x": Double(subtract(x: Int(p1["x"]!), y: Int(p2["x"]!))), "y": Double(subtract(x: Int(p1["y"]!), y: Int(p2["y"]!)))]
}

