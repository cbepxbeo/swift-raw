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
 |  File: Byte+Method+Get.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Byte {
    ///Receiving a bit by sequence number from left to right
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
    /// - Parameter number: sequence number
    /// - Returns: separate bit representation
    public func get(number: Byte.Number) -> Bit{
        switch number {
        case .n1:
            Bit(rawValue: (self.rawValue >> 7) == 1)
        default:
            Bit(rawValue: ((self.rawValue << (7 - number.offset)) >> 7) == 1)
        }
    }
}
