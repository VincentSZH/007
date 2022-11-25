pragma solidity ^0.8.4;
contract Othercontract{
    uint256 private _x = 0;
    event Log(uint amount, uint gas);
    fallback() external payable {}
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
}