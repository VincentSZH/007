pragma solidity ^0.8.4;
error SendFailed();
error CallFailed();
contract ReceiveETH {
    event Log(uint amount, uint gas);
    receive() external payable {
        emit Log(msg.value, gasleft());
    }
    function getBanlance() view public returns(uint) {
        return address(this).balance;

    }
}