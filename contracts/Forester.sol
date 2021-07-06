// SPDX-License_Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./SetUp.sol";

contract Forester is SetUp {


   function _createForester(string memory _name, string memory _familyName) internal {
    uint id = foresters.push(Forester(_name, _familyName, 1, 1, 1 days) + 1;
    foresterToUser[id] = msg.sender;
    emit NewForester(_name, _familyName);
  }
}