// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Mapping {
    mapping(string => uint256) private map;

    function get(string memory key) public view returns (uint256) {}

    function set(string memory key, uint256 value) public {}
}