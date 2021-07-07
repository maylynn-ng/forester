// SPDX-License_Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./SetUp.sol";

contract Forester is SetUp {


  function _createForester(string memory _name, string memory _familyName) internal {
    foresters.push(Forester(_name, _familyName, 1, 1, 1 days));
    uint _foresterId = foresters.length-1;
    foresterToUser[_foresterId] = msg.sender;
    emit NewForester(_name, _familyName);
    _discoverAcre(_foresterId);
  }

  function _discoverAcre(uint _foresterId) internal {
    acres.push(Acre(0));
    uint _acreId = acres.length-1;
    acreToForester[_acreId] = _foresterId;
    foresters[_foresterId].acreCount++;
  }

}