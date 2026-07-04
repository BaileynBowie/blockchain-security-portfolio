// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter3 {
	uint256 public count;

	function incrementBy(uint256 amount) public {
		count += amount;

	}

	function reset() public {
		count = 0;
	
	}
}
