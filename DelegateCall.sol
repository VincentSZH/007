pragma solidity ^0.8.4;
contract C {
    uint public num;
    address public sender;
    function setV(uint _num) public payable {
        num = _num;
        sender = msg.sender;
    }
}

contract B {
    uint public num;
    address public Sender;
    function callSetVars(address _addr, uint _num) external payable {
        (bool success , bytes memory data ) = _addr.call(
            abi.encodeWithSignature("setVar(uint256)", _num)
        );
    }

}