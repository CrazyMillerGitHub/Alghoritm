//
//  Stack.swift
//  Playground
//
//  Created by Михаил Борисов on 27.12.2019.
//  Copyright © 2019 Mikhail Borisov. All rights reserved.
//

import Foundation

struct Stack<Volume> {
    
    private var storage: [Volume] = []
    
    public mutating func push(_ element: Volume) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Volume? {
        storage.popLast()
    }
    
    @discardableResult
    public func peek() -> Volume? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
    
}

extension Stack: CustomStringConvertible {
    
    var description: String {
        """
        --Stack--
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        """
    }
    
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Volume...) {
        self.storage = elements
    }
    
    
}

//var stack: Stack = [1,2,3,4,5]
//stack.push(10)
//stack.push(3)
//stack.push(2)
//stack.push(5)
//print(stack)


/// Reversed Array
/// - Parameter array: array
func reverseArray<T>(_ array: [T]) {
    var stack = Stack<T>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
    
}

//reverseArray(readLine()!.split(separator: " "))
// Excersice 2
// 1
//h((e))llo(world)() // balanced parentheses
// 2
//(hello world // unbalanced parentheses


func balancedParentheses(str: String) -> Bool {
    
    var stack = Stack<String>()
    
    for character in str {
        if character == "(" {
            stack.push("(")
        }
        if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}

