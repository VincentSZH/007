pragma solidity ^0.8.4;
contract C {
    uint public num;
    address public sender;
    function setV(uint _num) public payable {
        num = _num;
        sender = msg.sender;
    }
}