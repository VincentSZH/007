pragma solidity ^0.8.4;
contract Receive {
    event Received(address Sender , uint Value );
    event fallbackCalled(address Sender, uint Value, bytes data);
    receive() external payable {
        emit Received(msg.sender, msg.value );
    }
    fallback() external payable {
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }
}