//
//  FunctionAssignmentTests.swift
//  FunctionAssignmentTests
//
//  Created by Jehad Sarkar on 2024-01-31.
//

import XCTest

@testable import ITE_5334

class FunctionAssignmentTests: XCTestCase {
    var functionAssignment: FunctionAssignment!

    override func setUp() {
        super.setUp()
        functionAssignment = FunctionAssignment()
    }

    override func tearDown() {
        functionAssignment = nil
        super.tearDown()
    }

    // Test for Addition
    func testAddition() {
        XCTAssertEqual(functionAssignment.add(5, 3), 8)
        XCTAssertEqual(functionAssignment.add(-1, -1), -2)
        XCTAssertEqual(functionAssignment.add(0, 0), 0)
    }

    // Test for Subtraction
    func testSubtraction() {
        XCTAssertEqual(functionAssignment.subtract(10, 5), 5)
        XCTAssertEqual(functionAssignment.subtract(-3, -2), -1)
        XCTAssertEqual(functionAssignment.subtract(0, 0), 0)
    }

    // Test for Multiplication
    func testMultiplication() {
        XCTAssertEqual(functionAssignment.multiply(4, 2), 8)
        XCTAssertEqual(functionAssignment.multiply(-2, 3), -6)
        XCTAssertEqual(functionAssignment.multiply(0, 10), 0)
    }

    // Test for Division
    func testDivision() {
        XCTAssertEqual(functionAssignment.divide(9, 3), 3)
        XCTAssertEqual(functionAssignment.divide(-10, -2), 5)
        XCTAssertNil(functionAssignment.divide(5, 0)) // Division by zero
    }

    // Test for Temperature Conversion
    func testTemperatureConversion() {
        XCTAssertEqual(functionAssignment.celsiusToFahrenheit(0), 32)
        XCTAssertEqual(functionAssignment.fahrenheitToCelsius(32), 0)
        XCTAssertEqual(functionAssignment.celsiusToKelvin(0), 273.15)
    }

    // Test for Odd or Even Identifier
    func testOddOrEvenIdentifier() {
        XCTAssertEqual(functionAssignment.identifyNumbers([1, 2, 3]), "mixed")
        XCTAssertEqual(functionAssignment.identifyNumbers([1, 3, 5]), "odd")
        XCTAssertEqual(functionAssignment.identifyNumbers([2, 4, 6]), "even")
    }

    // Test for Grade Evaluator
    func testGradeEvaluator() {
        XCTAssertEqual(functionAssignment.evaluateGrade(for: 95), "A")
        XCTAssertEqual(functionAssignment.evaluateGrade(for: 85), "B")
        XCTAssertEqual(functionAssignment.evaluateGrade(for: 75), "C")
        XCTAssertEqual(functionAssignment.evaluateGrade(for: 65), "D")
        XCTAssertEqual(functionAssignment.evaluateGrade(for: 55), "F")
    }

    // Test for Prime Number Checker
    func testPrimeNumberChecker() {
        XCTAssertTrue(functionAssignment.isPrime(2))
        XCTAssertTrue(functionAssignment.isPrime(11))
        XCTAssertFalse(functionAssignment.isPrime(4))
        XCTAssertFalse(functionAssignment.isPrime(1)) // 1 is not prime
        XCTAssertFalse(functionAssignment.isPrime(0)) // 0 is not prime
    }
}
