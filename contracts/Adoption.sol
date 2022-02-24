pragma solidity >=0.4.22 <0.8.0;

contract Adoption {
  address[16] public adopters;

  // Adopting a pet
  function adopt(uint256 petId) public returns (uint256) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender; // address of person or smart contract who called function
  }

  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }
}
