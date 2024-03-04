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
 |  File: Bit+Initializers.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Bit {
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
    /// - Parameter option: Representation of a zero or one bit value
    public init(_ option: Bit.Option){
        self.rawValue = switch option {
        case .null:
            false
        case .unit:
            true
        }
    }
}
