import XCTest
@testable import FloatingPointMath

final class FloatingPointMathTests: XCTestCase {
    func testDouble() {
        typealias F = Double
        let pi_4 = Double.pi/4
        XCTAssertEqual(F.acos (+1.0), 0.0)
        XCTAssertEqual(F.acosh(+1.0), 0.0)
        XCTAssertEqual(F.asin (+0.0), 0.0)
        XCTAssertEqual(F.asinh(+0.0), 0.0)
        XCTAssertEqual(F.atan (+0.0), 0.0)
        XCTAssertEqual(F.atanh(+0.0), 0.0)
        XCTAssertEqual(F.cbrt (+8.0), 2.0)
        XCTAssertEqual(F.cos  (+0.0), 1.0)
        XCTAssertEqual(F.cosh (+0.0), 1.0)
        XCTAssertEqual(F.exp  (+0.0), 1.0)
        XCTAssertEqual(F.exp2 (+2.0), 4.0)
        XCTAssertEqual(F.expm1(+0.0), 0.0)
        XCTAssertEqual(F.log  (+1.0), 0.0)
        XCTAssertEqual(F.log2 (+4.0), 2.0)
        XCTAssertEqual(F.log10(+100), 2.0)
        XCTAssertEqual(F.log1p(+0.0), 0.0)
        XCTAssertEqual(F.sin  (+0.0), 0.0)
        XCTAssertEqual(F.sinh (+0.0), 0.0)
        XCTAssertEqual(F.sqrt (+4.0), 2.0)
        XCTAssertEqual(F.tan  (+0.0), 0.0)
        XCTAssertEqual(F.tanh (+0.0), 0.0)
        XCTAssertEqual(F.atan2(+1.0, +1.0), pi_4)
        XCTAssertEqual(F.hypot(+3.0, -4.0), 5.0 )
        XCTAssertEqual(F.pow  (-2.0, -2.0), 0.25)
        XCTAssertEqual(F.erf  (+0.0), 0.0)
        XCTAssertEqual(F.erfc (+0.0), 1.0)
        XCTAssertEqual(F.lgamma(+1.0), 0.0)
        XCTAssertEqual(F.tgamma(+1.0), 1.0)
    }
    func testFloat() {
        typealias F = Float
        let pi_4 = F(Double.pi/4)
        XCTAssertEqual(F.acos (+1.0), 0.0)
        XCTAssertEqual(F.acosh(+1.0), 0.0)
        XCTAssertEqual(F.asin (+0.0), 0.0)
        XCTAssertEqual(F.asinh(+0.0), 0.0)
        XCTAssertEqual(F.atan (+0.0), 0.0)
        XCTAssertEqual(F.atanh(+0.0), 0.0)
        XCTAssertEqual(F.cbrt (+8.0), 2.0)
        XCTAssertEqual(F.cos  (+0.0), 1.0)
        XCTAssertEqual(F.cosh (+0.0), 1.0)
        XCTAssertEqual(F.exp  (+0.0), 1.0)
        XCTAssertEqual(F.exp2 (+2.0), 4.0)
        XCTAssertEqual(F.expm1(+0.0), 0.0)
        XCTAssertEqual(F.log  (+1.0), 0.0)
        XCTAssertEqual(F.log2 (+4.0), 2.0)
        XCTAssertEqual(F.log10(+100), 2.0)
        XCTAssertEqual(F.log1p(+0.0), 0.0)
        XCTAssertEqual(F.sin  (+0.0), 0.0)
        XCTAssertEqual(F.sinh (+0.0), 0.0)
        XCTAssertEqual(F.sqrt (+4.0), 2.0)
        XCTAssertEqual(F.tan  (+0.0), 0.0)
        XCTAssertEqual(F.tanh (+0.0), 0.0)
        XCTAssertEqual(F.atan2(+1.0, +1.0), pi_4)
        XCTAssertEqual(F.hypot(+3.0, -4.0), 5.0 )
        XCTAssertEqual(F.pow  (-2.0, -2.0), 0.25)
        XCTAssertEqual(F.erf  (+0.0), 0.0)
        XCTAssertEqual(F.erfc (+0.0), 1.0)
        XCTAssertEqual(F.lgamma(+1.0), 0.0)
        XCTAssertEqual(F.tgamma(+1.0), 1.0)
    }
    static var allTests = [
        ("testDouble", testDouble),

    ]
}
