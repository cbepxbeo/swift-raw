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
 |  File: Byte+Method+Set.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Byte {
    ///Sets the bit value by the specified sequence number from left to right
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
    /// - Parameter bit: bit representation
    /// - Parameter number: sequence number
    public mutating func set(bit: Bit, number: Byte.Number){
        self.rawValue = if bit.rawValue {
            self.rawValue | 1 << number.offset
        } else {
            self.rawValue & (254 << number.offset | 255 >> (8 - number.offset))
        }
    }
}
