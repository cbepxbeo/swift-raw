# SwiftRaw
The package is a wrapper over UInt8 for more convenient work with bits.   
There are both safer ways to create values, as well as classic ones based on integer literals.   
Using this solution you can easily and safely set and retrieve the specific bit of each byte without using bitwise operators

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding SwiftUIRouter as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift

//..

dependencies: [
    .package(url: "https://github.com/cbepxbeo/swift-raw.git", from: "1.0.0")
]

//..

.target(
    name: "Your package",
    dependencies: [
        .product(name: "SwiftRaw", package: "swift-raw")
    ]

//..

```

## Usage
### Creating byte
The fastest (not resource-intensive) and safest way to create based on the UInt8 type   

```swift
let byte = Byte(uInt: 255)
```

Using hexadecimal representation (possible overflow)

```swift
let byte: Byte = 0x00
```

Using decimal notation (possible overflow)

```swift
let byte: Byte = 255
```

Using bits (possible bit overflow).  
*more resource-intensive*

```swift
let byte = Byte(bits: (0,0,0,0,0,0,0,0))
```

Using bits without potential overflow  
*more resource-intensive*

```swift
let byte = Byte(bits: (false, false, false, false, false, false, false, false))
```

### Bit management

```swift
let byte: Byte = 0xDC
print(byte) //rawValue - 220
//print - Byte: [1|1|0|1|1|1|0|0]

byte.set(bit: .null, number: .n5)
byte.set(bit: .unit, number: .n3)

print(byte) //rawValue - 244
//print - Byte: [1|1|1|1|0|1|0|0]
```

### Receiving bits

```swift
let byte: Byte = 0xDC //220
print(byte)
//print - Byte: [1|1|0|1|1|1|0|0]

let bitN3 = byte.get(number: .n3)
let bitN4 = byte.get(number: .n4)

print(bitN3)
//print - Bit: 0

print(bitN4)
//print - Bit: 1
```

### Creating bit
Create a bit based on options

```swift
let nullBit = Bit(.null)
print(nullBit)
//print - Bit: 0

let unitBit = Bit(.unit)
print(unitBit)
//print - Bit: 1
```

Creating a bit from a Boolean value

```swift
let nullBit: Bit = false
print(nullBit)
//print - Bit: 0

let unitBit: Bit = true
print(unitBit)
//print - Bit: 1
```

Creating using decimal notation (possible overflow)

```swift
let nullBit: Bit = 0
print(nullBit)
//print - Bit: 0

let unitBit: Bit = 1
print(unitBit)
//print - Bit: 1
```

### Using bit

Reverses the value

```swift
let bit = Bit(.null)
print(bit)
//print - Bit: 0

byte.toggle()
print(bit)
//print - Bit: 1

byte.toggle()
print(bit)
//print - Bit: 0
```
## Additionally
### Byte

Perform bitwise operations as usual

```swift
let byte: Byte = 0x01 //00000001
let result = byte << 1

print(result)
//print - Byte: [0|0|0|0|0|0|1|0]
```
### Bit

Keep in mind that a bit is a representation of a type and is used as a means of manipulating bytes. Due to memory alignment, it will occupy one byte of memory regardless of its value.
