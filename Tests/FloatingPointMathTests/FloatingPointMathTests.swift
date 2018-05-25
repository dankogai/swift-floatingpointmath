import XCTest
@testable import FloatingPointMath

final class FloatingPointMathTests: XCTestCase {
    private typealias F32 = Float32
    private typealias F64 = Float64
    func testAtan232() { XCTAssertEqual(F32.atan2(F32(0), -F32(1)), F32.pi) }
    func testAtan264() { XCTAssertEqual(F64.atan2(F64(0), -F64(1)), F64.pi) }
    func testHypot32() { XCTAssertEqual(F32.hypot(F32(3), F32(4)), F32(5)) }
    func testHypot64() { XCTAssertEqual(F64.hypot(F64(3), F64(4)), F64(5)) }
    func testPow232()  { XCTAssertEqual(F32.pow(F32(4), -F32(0.5)), F32(0.5)) }
    func testPow264()  { XCTAssertEqual(F64.pow(F64(4), -F64(0.5)), F64(0.5)) }

    static var allTests = [
        ("testHypot32", testHypot32),
        ("testHypot64", testHypot64),
        // ("testAtan232", testAtan232), // Float.pi disagrees w/ atan2f(0,-1) on linux
        ("testAtan264", testAtan264),
        ("testPow232",  testPow232),
        ("testPow264",  testPow264),
    ]
}
