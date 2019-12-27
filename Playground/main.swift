//
//  main.swift
//  Playground
//
//  Created by Михаил Борисов on 27.12.2019.
//  Copyright © 2019 Mikhail Borisov. All rights reserved.
//

import Foundation

//print(balancedParentheses(str: readLine()!))

let linkedList = LinkedList<Int>()

linkedList.push(3)
linkedList.push(2)
linkedList.push(1)
linkedList.append(4)
print(linkedList.node(at: 2))
print(linkedList,linkedList.head?.value,linkedList.tail?.value)




