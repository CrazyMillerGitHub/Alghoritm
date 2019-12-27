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
    
    func append(_ value: Value) {
        if tail == nil {
            push(value)
        }
        
        tail!.next = Node(value: value)
        
        tail = tail!.next
    }
    
    /// Выводит Node по номеру
    /// - Parameter index: порядок в списке
    func node(at index: Int) -> Node<Value>? {
        
        var currectNode = head
        
        var currectIndex = 0
        
        while currectNode != nil && currectIndex < index {
            currectNode = currectNode!.next
            currectIndex += 1
        }
        
        return currectNode
    }
    
    
    /// Вставка в список узла
    /// - Parameter value: значение
    /// - Parameter node: узел в который вставляем значение после 
    func insert(_ value: Value, after node: Node<Value> ) -> Node<Value> {
        
        guard tail != nil else {
            append(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        return node.next!
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

