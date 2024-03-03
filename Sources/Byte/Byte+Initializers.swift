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
 |  File: Byte+Initializers.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Byte {
    public init(uInt input: UInt8){
        self.rawValue = input
    }
    public init(bits: (Bit, Bit, Bit, Bit, Bit, Bit, Bit, Bit)){
        var byte: Byte = .zero
        byte.set(bit: bits.0, number: .n1)
        byte.set(bit: bits.1, number: .n2)
        byte.set(bit: bits.2, number: .n3)
        byte.set(bit: bits.3, number: .n4)
        byte.set(bit: bits.4, number: .n5)
        byte.set(bit: bits.5, number: .n6)
        byte.set(bit: bits.6, number: .n7)
        byte.set(bit: bits.7, number: .n8)
        self = byte
    }
}
