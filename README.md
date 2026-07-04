# Blockchain Security Portfolio

A hands-on smart contract security project built with Solidity and Foundry.
Developed as part of a focused blockchain security learning path targeting
smart contract auditing and DeFi security roles.

## Project 1 — Voting Contract with Security Controls

An on-chain voting system demonstrating core smart contract security patterns.

### What it does
- Owner deploys the contract and is the only address that can add candidates
- Any wallet address can cast one vote for a candidate
- The contract prevents double voting and invalid candidate selection

### Security concepts demonstrated

| Vulnerability | Protection Used |
|---|---|
| Broken access control | Owner pattern — require(msg.sender == owner) |
| Double voting | mapping(address => bool) hasVoted |
| Invalid input | Bounds check on candidate index |
| No auth on admin functions | Constructor captures deployer as owner |

### How to run

Install Foundry: https://book.getfoundry.sh/

### Tests

- testAddCandidate — verifies only owner can add candidates
- testVote — verifies vote count increments correctly
- testCannotVoteTwice — verifies double voting is blocked

## Background

Built by a cybersecurity professional (CySA+, Security+, ISC2 CC) expanding
into blockchain and smart contract security. Currently building hands-on
experience with Solidity, Foundry, and common DeFi vulnerability classes.
