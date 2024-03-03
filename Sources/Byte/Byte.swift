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
 |  File: Byte.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

///A type representing a single byte that provides the ability to manipulate (get and set) bits.
///
///The fastest (not resource-intensive) and safest way to create based on the UInt8 type
///
///     let byte = Byte(uInt: 255)
///
///Creation using hexadecimal representation (possible overflow)
///
///     let byte: Byte = 0x00
///
///Creating using decimal notation (possible overflow)
///
///     let byte: Byte = 255
///
///Creation using bits (possible bit overflow)
///more resource-intensive
///
///     let byte = Byte(bits: (0,0,0,0,0,0,0,0))
///
///Creation using bits without potential overflow
///more resource-intensive
///
///     let byte = Byte(bits: (false, false, false, false, false, false, false, false))
///
///Bit management
///
///     let byte: Byte = 0xDC
///     print(byte) //rawValue - 220
///     //print - Byte: [1|1|0|1|1|1|0|0]
///
///     byte.set(bit: .null, number: .n5)
///     byte.set(bit: .unit, number: .n3)
///
///     print(byte) //rawValue - 244
///     //print - Byte: [1|1|1|1|0|1|0|0]
///
///Receiving bits
///
///     let byte: Byte = 0xDC //220
///     print(byte)
///     //print - Byte: [1|1|0|1|1|1|0|0]
///
///     let bitN3 = byte.get(number: .n3)
///     let bitN4 = byte.get(number: .n4)
///
///     print(bitN3)
///     //print - Bit: 0
///     print(bitN4)
///     //print - Bit: 1
///
///Perform bitwise operations as usual
///
///     let byte: Byte = 0x01 //00000001
///     let result = byte << 1
///
///     print(result)
///     //print - Byte: [0|0|0|0|0|0|1|0]
public struct Byte {
    ///Raw value represented by UInt8 type
    internal(set) public var rawValue: UInt8
}
