//
//  LinkedList.swift
//  Playground
//
//  Created by Михаил Борисов on 27.12.2019.
//  Copyright © 2019 Mikhail Borisov. All rights reserved.
//

import Foundation

public class LinkedList<Value> {
    
    init() { }
    
    var tail: Node<Value>?
    
    var head: Node<Value>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
    
}

public class Node<Value> {
    
    var value: Value
    
    var next: Node?
    
    init( value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
    
}

