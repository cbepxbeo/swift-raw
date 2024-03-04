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
 |  File: Byte+Subtype+Number.swift
 |  Created by: Egor Boyko
 |  Date: March 2nd, 2024
 |---------------------------------------------------------------------------------------
 
 */

extension Byte {
    ///Sequence number of a bit inside a byte from right to left
    public enum Number {
        ///First bit from left
        case n1
        //Second bit from left
        case n2
        ///Third bit from left
        case n3
        ///Fourth bit from left
        case n4
        ///Tifth bit from left
        case n5
        ///Sixth bit from left
        case n6
        ///Seventh bit from left
        case n7
        ///Eighth bit from left
        case n8
        
        var offset: Int {
            switch self {
            case .n1:
                7
            case .n2:
                6
            case .n3:
                5
            case .n4:
                4
            case .n5:
                3
            case .n6:
                2
            case .n7:
                1
            case .n8:
                0
            }
        }
    }
}
