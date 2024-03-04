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
 |  File: Bit+Method+Toggle.swift
 |  Created by: Egor Boyko
 |  Date: March 3rd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Bit {
    ///Reverses the value
    ///
    ///     let bit = Bit(.null)
    ///     print(bit)
    ///     //print - Bit: 0
    ///
    ///     byte.toggle()
    ///     print(bit)
    ///     //print - Bit: 1
    ///
    ///     byte.toggle()
    ///     print(bit)
    ///     //print - Bit: 0
    ///
    ///
    public mutating func toggle() {
        self.rawValue.toggle()
    }
}
