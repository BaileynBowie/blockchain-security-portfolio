// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Voting.sol";

contract VotingTest is Test {
    Voting public voting;

    function setUp() public {
        voting = new Voting();
    }

    function testAddCandidate() public {
        voting.addCandidate("Alice");
	(string memory name, uint256 voteCount) = voting.candidates(0);
        assertEq(name, "Alice");
    }

    function testVote() public {
        voting.addCandidate("Alice");
        voting.vote(0);
	(, uint256 voteCount) = voting.candidates(0);
        assertEq(voteCount, 1);
    }

    function testCannotVoteTwice() public {
        voting.addCandidate("Alice");
        voting.vote(0);
        vm.expectRevert("Already voted");
        voting.vote(0);
    }
}
