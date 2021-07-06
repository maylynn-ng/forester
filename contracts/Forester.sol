// SPDX-License_Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Forest is Ownable {
  uint ageTreeFee;

  mapping(address => uint) public userToForester;

  struct Forester {
    uint id; 
    string name; 
    string familyName;
    uint level;
    uint acreCount;
    uint discoverCooldown;
  }

}