[![Swift 4.1](https://img.shields.io/badge/swift-4.1-brightgreen.svg)](https://swift.org)
[![MIT LiCENSE](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![build status](https://secure.travis-ci.org/dankogai/swift-floatingpointmath.png)](http://travis-ci.org/dankogai/swift-floatingpointmath)

# swift-floatingpointmath
Protocol-Oriented Math Functions for Swift


## Description

This module provides a protocol `FloatingPointMath`.  Conforming protocols MUST implemnt:

```
public protocol FloatingPointMath {
    init (_:Double)             // BinaryFloatingPoint already has one
    var asDouble:Double { get } // you have to add it yourself
}
```

And SHOULD implement (though default implementations are provided):

```
static func acos (_ x:Self)->Self
static func acosh(_ x:Self)->Self
static func asin (_ x:Self)->Self
static func asinh(_ x:Self)->Self
static func atan (_ x:Self)->Self
static func atanh(_ x:Self)->Self
static func cos  (_ x:Self)->Self
static func cosh (_ x:Self)->Self
static func exp  (_ x:Self)->Self
static func log  (_ x:Self)->Self
static func log10(_ x:Self)->Self
static func sin  (_ x:Self)->Self
static func sinh (_ x:Self)->Self
static func sqrt (_ x:Self)->Self
static func tan  (_ x:Self)->Self
static func tanh (_ x:Self)->Self
static func atan2(_ x:Self)->Self
static func hypot(_ x:Self)->Self
static func pow  (_ x:Self)->Self
```

In short, conforming types are guaranteed to have math functions as (static|class) methods.  For convenience, `Double` and `Float` are made `FloatingPointMath` when you `import`.

Unlike `Foundation` (or `Glibc` or `Darwin`), this module:

* does nothing further.  Just math functions found in `libm`.
* imports these functions as (static|class) methods to avoid namespace collision.
  ```swift
  import Foundation
  atan2(0.0, -1.0) == M_PI // imported in the global namespace with lots of other symbols
  ```
  ```swift
  import FloatingPointMath
  Double.atan2(0.0, -1.0) == Double.pi // explicitly under `Double`.
  ```

## Default implementation of functions

Default implementations just convert to Double, do the calculation and convert the result back like the following.

```
public static func acos (_ x:Self)->Self { 
  return Self(Darwin.acos (x.asDouble))
}
```

So the result is only as accurate as `Double`.  For more accurate floating-point types (say, `Float128` or `BigFloat`), you should implement your own.

## Usage

Add the following to the `Package.swift` file of your project.

* `dependencies:`
  ```swift
  .package(url: "https://github.com/dankogai/swift-floatingpointmath.git", from: "0.0.7")
  ```

* `.target` in `targets:`
  ```swift
  dependencies:["FloatingPointMath"]
  ```
