// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter2.sol";

contract Counter2Test is Test {
    Counter2 public counter2;

    function setUp() public {
        counter2 = new Counter2();
    }

    function testIncrementBy() public {
        counter2.incrementBy(5);
        assertEq(counter2.count(), 5);
    }
}
