//
//  CalculatorViewModel.swift
//  SwiftUILesson
//
//  Created by Bogdan Shmatov on 11.04.2024.
//

import SwiftUI

class CalculatorViewModel: ObservableObject {
    
    @Published public var number1 = ""
    @Published public var number2 = ""
    @Published public var result = ""
    @Published public var operationsHistory: [String] = []
    
    
    func calculate(operation: Operation) {
        guard let num1 = Double(number1), let num2 = Double(number2) else {
            result = "Invalid input"
            return
        }
        
        switch operation {
        case .addition:
            result = "\(num1 + num2)"
        case .subtraction:
            result = "\(num1 - num2)"
        case .multiplication:
            result = "\(num1 * num2)"
        case .division:
            if num2 != 0 {
                result = "\(num1 / num2)"
            } else {
                result = "Division by zero"
            }
        }
        
        let operstionString = "\(number1) \(operation.symbol) \(number2) = \(result)"
        operationsHistory.append(operstionString)
        
    }
    
    enum Operation {
        case addition, subtraction, multiplication, division
        
        var symbol: String {
            switch self {
            case .addition:
                return "+"
            case .subtraction:
                return "-"
            case .multiplication:
                return "*"
            case .division:
                return "/"
            }
        }
    }
}
