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
 |  File: Bit+Protocol+ExpressibleByIntegerLiteral.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Bit: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        if value > 1 {
            fatalError("A bit cannot be represented by a number greater than one")
        }
        if value < 0 {
            fatalError("bit cannot be represented by a negative number")
        }
        self.rawValue = value == 1
    }
}