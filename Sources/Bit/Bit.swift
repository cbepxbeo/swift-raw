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
 |  File: Bit.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

///A type representing a single bit
///
///Create a bit based on options
///
///     let nullBit = Bit(.null)
///     print(nullBit)
///     //print - Bit: 0
///
///     let unitBit = Bit(.unit)
///     print(unitBit)
///    //print - Bit: 1
///
///Creating a bit from a Boolean value
///
///     let nullBit: Bit = false
///     print(nullBit)
///     //print - Bit: 0
///
///     let unitBit: Bit = true
///     print(unitBit)
///    //print - Bit: 1
///
///Creating using decimal notation (possible overflow)
///
///     let nullBit: Bit = 0
///     print(nullBit)
///     //print - Bit: 0
///
///     let unitBit: Bit = 1
///     print(unitBit)
///    //print - Bit: 1
///    
/// - Note: Keep in mind that a bit is a representation of a type and is used as a means of manipulating bytes. Due to memory alignment, it will occupy one byte of memory regardless of its value.
public struct Bit {
    internal(set) public var rawValue: Bool
}
