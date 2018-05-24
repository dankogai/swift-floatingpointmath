public protocol DoubleConvertible {
    init(_:Double)
    var asDouble:Double { get }
}

extension FloatingPoint {
    public static func acos (_ x:Self)->Self { fatalError("unimplemented") }
    public static func asin (_ x:Self)->Self { fatalError("unimplemented") }
    public static func atan (_ x:Self)->Self { fatalError("unimplemented") }
    public static func acosh(_ x:Self)->Self { fatalError("unimplemented") }
    public static func asinh(_ x:Self)->Self { fatalError("unimplemented") }
    public static func atanh(_ x:Self)->Self { fatalError("unimplemented") }
    public static func cos  (_ x:Self)->Self { fatalError("unimplemented") }
    public static func cosh (_ x:Self)->Self { fatalError("unimplemented") }
    public static func exp  (_ x:Self)->Self { fatalError("unimplemented") }
    public static func log  (_ x:Self)->Self { fatalError("unimplemented") }
    public static func sin  (_ x:Self)->Self { fatalError("unimplemented") }
    public static func sinh (_ x:Self)->Self { fatalError("unimplemented") }
    public static func sqrt (_ x:Self)->Self { fatalError("unimplemented") }
    public static func atan2(_ y:Self, _ x:Self)->Self { fatalError("unimplemented") }
    public static func hypot(_ x:Self, _ y:Self)->Self { fatalError("unimplemented") }
    public static func pow  (_ x:Self, _ y:Self)->Self { fatalError("unimplemented") }
}

#if os(Linux)
import Glibc
#else
import Darwin
#endif

extension FloatingPoint where Self:DoubleConvertible {
    #if os(Linux)
    public static func acos (_ x:Self)->Self { return Self(Glibc.acos(x.asDouble)) }
    public static func asin (_ x:Self)->Self { return Self(Glibc.asin(x.asDouble)) }
    public static func atan (_ x:Self)->Self { return Self(Glibc.atan(x.asDouble)) }
    public static func acosh(_ x:Self)->Self { return Self(Glibc.acosh(x.asDouble)) }
    public static func asinh(_ x:Self)->Self { return Self(Glibc.asinh(x.asDouble)) }
    public static func atanh(_ x:Self)->Self { return Self(Glibc.atanh(x.asDouble)) }
    public static func cos  (_ x:Self)->Self { return Self(Glibc.cos(x.asDouble)) }
    public static func cosh (_ x:Self)->Self { return Self(Glibc.cosh(x.asDouble)) }
    public static func exp  (_ x:Self)->Self { return Self(Glibc.exp(x.asDouble)) }
    public static func log  (_ x:Self)->Self { return Self(Glibc.log(x.asDouble)) }
    public static func sin  (_ x:Self)->Self { return Self(Glibc.sin(x.asDouble)) }
    public static func sinh (_ x:Self)->Self { return Self(Glibc.sinh(x.asDouble)) }
    public static func sqrt (_ x:Self)->Self { return Self(Glibc.sqrt(x.asDouble)) }
    public static func atan2(_ y:Self, _ x:Self)->Self { return Self(Glibc.atan2(y.asDouble, x.asDouble)) }
    public static func hypot(_ x:Self, _ y:Self)->Self { return Self(Glibc.hypot(x.asDouble, y.asDouble)) }
    public static func pow  (_ x:Self, _ y:Self)->Self { return Self(Glibc.pow(x.asDouble, y.asDouble)) }
    #else
    public static func acos (_ x:Self)->Self { return Self(Darwin.acos(x.asDouble)) }
    public static func asin (_ x:Self)->Self { return Self(Darwin.asin(x.asDouble)) }
    public static func atan (_ x:Self)->Self { return Self(Darwin.atan(x.asDouble)) }
    public static func acosh(_ x:Self)->Self { return Self(Darwin.acosh(x.asDouble)) }
    public static func asinh(_ x:Self)->Self { return Self(Darwin.asinh(x.asDouble)) }
    public static func atanh(_ x:Self)->Self { return Self(Darwin.atanh(x.asDouble)) }
    public static func cos  (_ x:Self)->Self { return Self(Darwin.cos(x.asDouble)) }
    public static func cosh (_ x:Self)->Self { return Self(Darwin.cosh(x.asDouble)) }
    public static func exp  (_ x:Self)->Self { return Self(Darwin.exp(x.asDouble)) }
    public static func log  (_ x:Self)->Self { return Self(Darwin.log(x.asDouble)) }
    public static func sin  (_ x:Self)->Self { return Self(Darwin.sin(x.asDouble)) }
    public static func sinh (_ x:Self)->Self { return Self(Darwin.sinh(x.asDouble)) }
    public static func sqrt (_ x:Self)->Self { return Self(Darwin.sqrt(x.asDouble)) }
    public static func atan2(_ y:Self, _ x:Self)->Self { return Self(Darwin.atan2(y.asDouble, x.asDouble)) }
    public static func hypot(_ x:Self, _ y:Self)->Self { return Self(Darwin.hypot(x.asDouble, y.asDouble)) }
    public static func pow  (_ x:Self, _ y:Self)->Self { return Self(Darwin.pow(x.asDouble, y.asDouble)) }
    #endif
}

extension Double : DoubleConvertible {
    public var asDouble:Double { return self }
    #if os(Linux)
    public static func acos (_ x:Double)->Double { return Glibc.acos(x) }
    public static func asin (_ x:Double)->Double { return Glibc.asin(x) }
    public static func atan (_ x:Double)->Double { return Glibc.atan(x) }
    public static func acosh(_ x:Double)->Double { return Glibc.acosh(x) }
    public static func asinh(_ x:Double)->Double { return Glibc.asinh(x) }
    public static func atanh(_ x:Double)->Double { return Glibc.atanh(x) }
    public static func cos  (_ x:Double)->Double { return Glibc.cos(x) }
    public static func cosh (_ x:Double)->Double { return Glibc.cosh(x) }
    public static func exp  (_ x:Double)->Double { return Glibc.exp(x) }
    public static func log  (_ x:Double)->Double { return Glibc.log(x) }
    public static func sin  (_ x:Double)->Double { return Glibc.sin(x) }
    public static func sinh (_ x:Double)->Double { return Glibc.sinh(x) }
    public static func sqrt (_ x:Double)->Double { return Glibc.sqrt(x) }
    public static func atan2(_ y:Double, _ x:Double)->Double { return Glibc.atan2(y, x) }
    public static func hypot(_ x:Double, _ y:Double)->Double { return Glibc.hypot(x, y) }
    public static func pow  (_ x:Double, _ y:Double)->Double { return Glibc.pow(x, y) }
    #else
    public static func acos (_ x:Double)->Double { return Darwin.acos(x) }
    public static func asin (_ x:Double)->Double { return Darwin.asin(x) }
    public static func atan (_ x:Double)->Double { return Darwin.atan(x) }
    public static func acosh(_ x:Double)->Double { return Darwin.acosh(x) }
    public static func asinh(_ x:Double)->Double { return Darwin.asinh(x) }
    public static func atanh(_ x:Double)->Double { return Darwin.atanh(x) }
    public static func cos  (_ x:Double)->Double { return Darwin.cos(x) }
    public static func cosh (_ x:Double)->Double { return Darwin.cosh(x) }
    public static func exp  (_ x:Double)->Double { return Darwin.exp(x) }
    public static func log  (_ x:Double)->Double { return Darwin.log(x) }
    public static func sin  (_ x:Double)->Double { return Darwin.sin(x) }
    public static func sinh (_ x:Double)->Double { return Darwin.sinh(x) }
    public static func sqrt (_ x:Double)->Double { return Darwin.sqrt(x) }
    public static func atan2(_ y:Double, _ x:Double)->Double { return Darwin.atan2(y, x) }
    public static func hypot(_ x:Double, _ y:Double)->Double { return Darwin.hypot(x, y) }
    public static func pow  (_ x:Double, _ y:Double)->Double { return Darwin.pow(x, y) }
    #endif
}

extension Float : DoubleConvertible {
    public var asDouble:Double { return Double(self) }
}

extension Float80 : DoubleConvertible {
    public var asDouble:Double { return Double(self) }
}
