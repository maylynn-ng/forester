// SPDX-License_Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract SetUp is Ownable {
  // states
  uint ageTreeFee;

  // state arrays
  Forester[] public foresters;
  Acre[] public acres;
  Tree[] public trees;

  // state mappings
  mapping(uint => address) public foresterToUser;
  mapping(uint => uint) public treeToAcre;
  mapping(uint => uint) public acreToForester;

  // structs
  struct Forester {
    string name; 
    string familyName;
    uint level;
    uint acreCount;
    uint discoverCooldown;
    uint waterCooldown;
  }

  struct Acre {
    uint treeCount;
    uint lastWatered;
  }

  struct Tree {
    string kind;
    string species;
    string name;
    uint age;
    uint powerCooldown;
    uint spliceCount;
    uint spliceCooldown;
  }

  // modifiers
  modifier _canSplice(Tree memory _mum, Tree memory _dad) {
    require(_mum.age > 10 && _dad.age > 10);
    // calculate splice time and make it a require
    _;
  }

  // events
  event NewForester (string _name, string _familyName);
  event NewAcre(string _foresterName);
}