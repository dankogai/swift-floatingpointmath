import XCTest
@testable import FloatingPointMath

final class FloatingPointMathTests: XCTestCase {
    func testDouble() {
        typealias D = Double
        let pi_4 = D.pi/4
        XCTAssertEqual(D.acos (+1.0), 0.0)
        XCTAssertEqual(D.acosh(+1.0), 0.0)
        XCTAssertEqual(D.asin (+0.0), 0.0)
        XCTAssertEqual(D.asinh(+0.0), 0.0)
        XCTAssertEqual(D.atan (+0.0), 0.0)
        XCTAssertEqual(D.atanh(+0.0), 0.0)
        XCTAssertEqual(D.cos  (+0.0), 1.0)
        XCTAssertEqual(D.cosh (+0.0), 1.0)
        XCTAssertEqual(D.exp  (+0.0), 1.0)
        XCTAssertEqual(D.log  (+1.0), 0.0)
        XCTAssertEqual(D.log10(+100), 2.0)
        XCTAssertEqual(D.sin  (+0.0), 0.0)
        XCTAssertEqual(D.sinh (+0.0), 0.0)
        XCTAssertEqual(D.sqrt (+0.0), 0.0)
        XCTAssertEqual(D.tan  (+0.0), 0.0)
        XCTAssertEqual(D.tanh (+0.0), 0.0)
        XCTAssertEqual(D.atan2(+1.0, +1.0), pi_4)
        XCTAssertEqual(D.hypot(+3.0, -4.0), 5.0 )
        XCTAssertEqual(D.pow  (-2.0, -2.0), 0.25)
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
        XCTAssertEqual(F.cos  (+0.0), 1.0)
        XCTAssertEqual(F.cosh (+0.0), 1.0)
        XCTAssertEqual(F.exp  (+0.0), 1.0)
        XCTAssertEqual(F.log  (+1.0), 0.0)
        XCTAssertEqual(F.log10(+100), 2.0)
        XCTAssertEqual(F.sin  (+0.0), 0.0)
        XCTAssertEqual(F.sinh (+0.0), 0.0)
        XCTAssertEqual(F.sqrt (+0.0), 0.0)
        XCTAssertEqual(F.tan  (+0.0), 0.0)
        XCTAssertEqual(F.tanh (+0.0), 0.0)
        XCTAssertEqual(F.atan2(+1.0, +1.0), pi_4)
        XCTAssertEqual(F.hypot(+3.0, -4.0), 5.0 )
        XCTAssertEqual(F.pow  (-2.0, -2.0), 0.25)
    }
    static var allTests = [
        ("testDouble", testDouble),

    ]
}
