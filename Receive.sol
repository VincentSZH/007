pragma solidity ^0.8.4;
contract Receive {
    event Received(address Sender , uint Value );
    receive() external payable {
        emit Received(msg.sender, msg.value );
    }
}