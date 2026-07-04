// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter3.sol";

contract Counter3Test is Test {
	Counter3 public counter3;

	function setUp() public {
		counter3 = new Counter3();
	}

	function testIncrementBy() public {
		counter3.incrementBy(5);
		assertEq(counter3.count(), 5);
	}
}
