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
//        If b is 0 then return nil because number cant be divided by 0
        if b != 0 {
            return a / b
        } else {
            return nil
        }
    }
    
    func celsiusToFahrenheit(_ celsius: Double) -> Double {
//        Formula for conversion
        return (celsius * 9/5) + 32
    }

    func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
        //        Formula for conversion
        return (fahrenheit - 32) * 5/9
    }

    func celsiusToKelvin(_ celsius: Double) -> Double {
        //        Formula for conversion
        return celsius + 273.15
    }
    
    func identifyNumbers(_ numbers: [Int]) -> String {
//        Counter to keep track of odd and even numebrs in the array
            var oddCount = 0
            var evenCount = 0
//            Loop through the numbers and increment the relevant counter
            for number in numbers {
                if number % 2 == 0 {
                    evenCount += 1
                } else {
                    oddCount += 1
                }
            }
            
//        Return even if odd counter is 0
//        Return odd if even counter is 0
//        Else Return mixed
            if oddCount == 0 {
                return "even"
            } else if evenCount == 0 {
                return "odd"
            } else {
                return "mixed"
            }
    }

    func evaluateGrade(for score: Int) -> String {
        //        Switch between grades based on the score range
        switch score {
        case 90...100:
            return "A"
        case 80..<90:
            return "B"
        case 70..<80:
            return "C"
        case 60..<70:
            return "D"
        default:
            return "F"
        }
    }
    
    func isPrime(_ number: Int) -> Bool {
        
        if number < 2 {
            return false
        }
        
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        
        return true
    }

    // Extend with more functions as needed

}
