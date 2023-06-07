//
//  main.swift
//  DiscoveringSwiftMacros
//
//  Created by Vincent on 07/06/2023.
//

import Foundation
import Macros

@OptionSet<Int>
struct SundaeToppings {
    private enum Options: Int {
        case nuts
        case cherry
        case fudge
    }
}

let a = Int.random(in: 0...5)
let b = 4

print(#stringify(a + b))

let expandedMacro = #stringify(Date()) // (Date(), "Date())

print("Time before sleeping: \(Date())")
try! await Task.sleep(for: .seconds(2))
print("Time after sleeping: \(Date())")

print(expandedMacro)

let maybeString = Bool.random() ? Bool.random() ? "Hello, world!" : "" : nil

func myFunction() {
    #bindIfNotEmpty(maybeString, {
        print(maybeString)
    })
}

myFunction()
