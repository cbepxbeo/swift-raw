/*
 
 |---------------------------------------------------------------------------------------
 |  Copyright The Swift-Raw Contributors.
 |  Licensed under the Apache License, Version 2.0 (the "License");
 |  you may not use this file except in compliance with the License.
 |  You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 |
 |  Unless required by applicable law or agreed to in writing, software
 |  distributed under the License is distributed on an "AS IS" BASIS,
 |  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 |  See the License for the specific language governing permissions and
 |  limitations under the License.
 |---------------------------------------------------------------------------------------
 |  File: SwiftRawMethodGetTests.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

import XCTest
@testable import SwiftRaw

final class SwiftRawMethodGetTests: XCTestCase {
    func testN1(){
        let a: Byte = 0x7F //01111111
        let b: Byte = 0x80 //10000000
        XCTAssert(a.get(number: .n1) == Bit(.null))
        XCTAssert(b.get(number: .n1) == Bit(.unit))
    }
    func testN2(){
        let a: Byte = 0xBF //10111111
        let b: Byte = 0x40 //01000000
        XCTAssert(a.get(number: .n2) == Bit(.null))
        XCTAssert(b.get(number: .n2) == Bit(.unit))
    }
    func testN3(){
        let a: Byte = 0xDF //11011111
        let b: Byte = 0x20 //00100000
        XCTAssert(a.get(number: .n3) == Bit(.null))
        XCTAssert(b.get(number: .n3) == Bit(.unit))
    }
    func testN4(){
        let a: Byte = 0xEF //11101111
        let b: Byte = 0x10 //00010000
        XCTAssert(a.get(number: .n4) == Bit(.null))
        XCTAssert(b.get(number: .n4) == Bit(.unit))
    }
    func testN5(){
        let a: Byte = 0xF7 //11110111
        let b: Byte = 0x08 //00001000
        XCTAssert(a.get(number: .n5) == Bit(.null))
        XCTAssert(b.get(number: .n5) == Bit(.unit))
    }
    func testN6(){
        let a: Byte = 0xFB //11111011
        let b: Byte = 0x04 //00000100
        XCTAssert(a.get(number: .n6) == Bit(.null))
        XCTAssert(b.get(number: .n6) == Bit(.unit))
    }
    func testN7(){
        let a: Byte = 0xFD //11111101
        let b: Byte = 0x02 //00000010
        XCTAssert(a.get(number: .n7) == Bit(.null))
        XCTAssert(b.get(number: .n7) == Bit(.unit))
    }
    func testN8(){
        let a: Byte = 0xFE //11111110
        let b: Byte = 0x01 //00000001
        XCTAssert(a.get(number: .n8) == Bit(.null))
        XCTAssert(b.get(number: .n8) == Bit(.unit))
    }
}
