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
 |  File: Byte+Protocol+CustomStringConvertible.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Byte: CustomStringConvertible {
    public var description: String {
        let string = String(self.rawValue, radix: 2)
        let zeroView = "0"
        let strings = switch string.count {
        case 1:
            Array<String>.init(repeating: zeroView, count: 7) + [string]
        case 2:
            Array<String>.init(repeating: zeroView, count: 6) + string.map { String($0) }
        case 3:
            Array<String>.init(repeating: zeroView, count: 5) + string.map { String($0) }
        case 4:
            Array<String>.init(repeating: zeroView, count: 4) + string.map { String($0) }
        case 5:
            Array<String>.init(repeating: zeroView, count: 3) + string.map { String($0) }
        case 6:
            Array<String>.init(repeating: zeroView, count: 2) + string.map { String($0) }
        case 7:
            [zeroView] + string.map { String($0) }
        default:
            string.map { String($0) }
        }
        return "Byte: [" + strings.joined(separator: "|") + "]"
    }
}
