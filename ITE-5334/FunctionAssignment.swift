//
//  FunctionAssignment.swift
//  ITE-5334
//
//  Created by Jehad Sarkar on 2024-01-31.
//

public class FunctionAssignment {
    
    public init() {
        
    }
    
    func add(_ a: Double, _ b: Double) -> Double {
        return a+b
    }
    
    func subtract(_ a: Double, _ b: Double) -> Double {
        return a-b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a*b
    }
    
    func divide(_ a: Double, _ b: Double) -> Double? {
        return a/b
    }
    
    func celsiusToFahrenheit(_ celsius: Double) -> Double {
        return 0
    }

    func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
        return 0
    }

    func celsiusToKelvin(_ celsius: Double) -> Double {
        return 0
    }
    
    func identifyNumbers(_ numbers: [Int]) -> String {
        let allEven = numbers.allSatisfy { $0 % 2 == 0 }
        let allOdd = numbers.allSatisfy { $0 % 2 != 0 }

        if allEven {
            return "even"
        } else if allOdd {
            return "odd"
        } else {
            return "mixed"
        }
    }

    func evaluateGrade(for score: Int) -> String {
        "F"
    }
    
    func isPrime(_ number: Int) -> Bool {
        return true
    }

    // Extend with more functions as needed

}
