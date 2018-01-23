//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    
    public func add(_ nums: [Int]) -> Int {
        var sum = 0
        for num in nums {
            sum += num
        }
        return sum
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    
    public func multiply(_ nums: [Int]) -> Int {
        var product = 1
        for num in nums {
            product *= num
        }
        return product
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs;
    }
    
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs);
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var n = beg
        for arg in args {
            n = op(n, arg)
        }
        return n
    }
    
    public func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    public func avg(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        return sum / nums.count
    }
}
