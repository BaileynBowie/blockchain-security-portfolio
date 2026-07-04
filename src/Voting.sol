// SPDX-Licensing-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Voting {
	struct Candidate {
		string name;
		uint256 voteCount; 
	}


	address public owner;
	Candidate[] public candidates;
	mapping(address => bool) public hasVoted;

	constructor() {
		owner = msg.sender;
	}

	function addCandidate(string memory name) public {
		require(msg.sender == owner, "Not authorize");
		candidates.push(Candidate(name,0));
}

	function vote(uint256 candidateIndex) public {
		require(!hasVoted[msg.sender], "Already voted");
		require(candidateIndex < candidates.length, "Invalid candidate");
		hasVoted[msg.sender] = true;
		candidates[candidateIndex].voteCount++;
	}
}
