#if os(Linux)
import Glibc
#else
import Darwin
#endif

public protocol FloatingPointMath {
    static func acos (_:Self)->Self
    static func asin (_:Self)->Self
    static func atan (_:Self)->Self
    static func acosh(_:Self)->Self
    static func asinh(_:Self)->Self
    static func atanh(_:Self)->Self
    static func cos  (_:Self)->Self
    static func cosh (_:Self)->Self
    static func exp  (_:Self)->Self
    static func log  (_:Self)->Self
    static func log10(_:Self)->Self
    static func sin  (_:Self)->Self
    static func sinh (_:Self)->Self
    static func sqrt (_:Self)->Self
    static func tan  (_:Self)->Self
    static func tanh (_:Self)->Self
    static func atan2(_:Self, _:Self)->Self
    static func hypot(_:Self, _:Self)->Self
    static func pow  (_:Self, _:Self)->Self
}

extension Double : FloatingPointMath {
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
    public static func log10(_ x:Double)->Double { return Glibc.log10(x) }
    public static func sin  (_ x:Double)->Double { return Glibc.sin(x) }
    public static func sinh (_ x:Double)->Double { return Glibc.sinh(x) }
    public static func sqrt (_ x:Double)->Double { return Glibc.sqrt(x) }
    public static func tan  (_ x:Double)->Double { return Glibc.tan(x) }
    public static func tanh (_ x:Double)->Double { return Glibc.tanh(x) }
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
    public static func log10(_ x:Double)->Double { return Darwin.log10(x) }
    public static func sin  (_ x:Double)->Double { return Darwin.sin(x) }
    public static func sinh (_ x:Double)->Double { return Darwin.sinh(x) }
    public static func sqrt (_ x:Double)->Double { return Darwin.sqrt(x) }
    public static func tan  (_ x:Double)->Double { return Darwin.tan(x) }
    public static func tanh (_ x:Double)->Double { return Darwin.tanh(x) }
    public static func atan2(_ y:Double, _ x:Double)->Double { return Darwin.atan2(y, x) }
    public static func hypot(_ x:Double, _ y:Double)->Double { return Darwin.hypot(x, y) }
    public static func pow  (_ x:Double, _ y:Double)->Double { return Darwin.pow(x, y) }
    #endif
}

extension Float : FloatingPointMath {
    #if os(Linux)
    public static func acos (_ x:Float)->Float { return Glibc.acos(x) }
    public static func asin (_ x:Float)->Float { return Glibc.asin(x) }
    public static func atan (_ x:Float)->Float { return Glibc.atan(x) }
    public static func acosh(_ x:Float)->Float { return Glibc.acosh(x) }
    public static func asinh(_ x:Float)->Float { return Glibc.asinh(x) }
    public static func atanh(_ x:Float)->Float { return Glibc.atanh(x) }
    public static func cos  (_ x:Float)->Float { return Glibc.cos(x) }
    public static func cosh (_ x:Float)->Float { return Glibc.cosh(x) }
    public static func exp  (_ x:Float)->Float { return Glibc.exp(x) }
    public static func log  (_ x:Float)->Float { return Glibc.log(x) }
    public static func log10(_ x:Float)->Float { return Glibc.log10(x) }
    public static func sin  (_ x:Float)->Float { return Glibc.sin(x) }
    public static func sinh (_ x:Float)->Float { return Glibc.sinh(x) }
    public static func sqrt (_ x:Float)->Float { return Glibc.sqrt(x) }
    public static func tan  (_ x:Float)->Float { return Glibc.tan(x) }
    public static func tanh (_ x:Float)->Float { return Glibc.tanh(x) }
    public static func atan2(_ y:Float, _ x:Float)->Float { return Glibc.atan2(y, x) }
    public static func hypot(_ x:Float, _ y:Float)->Float { return Glibc.hypot(x, y) }
    public static func pow  (_ x:Float, _ y:Float)->Float { return Glibc.pow(x, y) }
    #else
    public static func acos (_ x:Float)->Float { return Darwin.acos(x) }
    public static func asin (_ x:Float)->Float { return Darwin.asin(x) }
    public static func atan (_ x:Float)->Float { return Darwin.atan(x) }
    public static func acosh(_ x:Float)->Float { return Darwin.acosh(x) }
    public static func asinh(_ x:Float)->Float { return Darwin.asinh(x) }
    public static func atanh(_ x:Float)->Float { return Darwin.atanh(x) }
    public static func cos  (_ x:Float)->Float { return Darwin.cos(x) }
    public static func cosh (_ x:Float)->Float { return Darwin.cosh(x) }
    public static func exp  (_ x:Float)->Float { return Darwin.exp(x) }
    public static func log  (_ x:Float)->Float { return Darwin.log(x) }
    public static func log10(_ x:Float)->Float { return Darwin.log10(x) }
    public static func sin  (_ x:Float)->Float { return Darwin.sin(x) }
    public static func sinh (_ x:Float)->Float { return Darwin.sinh(x) }
    public static func sqrt (_ x:Float)->Float { return Darwin.sqrt(x) }
    public static func tan  (_ x:Float)->Float { return Darwin.tan(x) }
    public static func tanh (_ x:Float)->Float { return Darwin.tanh(x) }
    public static func atan2(_ y:Float, _ x:Float)->Float { return Darwin.atan2(y, x) }
    public static func hypot(_ x:Float, _ y:Float)->Float { return Darwin.hypot(x, y) }
    public static func pow  (_ x:Float, _ y:Float)->Float { return Darwin.pow(x, y) }
    #endif
}
