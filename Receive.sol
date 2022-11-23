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
    //  触发fallback() 还是 receive()?
    //         接收ETH
    //             |
    //        msg.data是空？
    //           /  \
    //         是    否
    //         /      \
    // receive()存在?   fallback()
    //           / \
    //          是  否
    //         /     \
    //   receive()   fallback()
}
contract ReceiveETH {
    event Received(address Sender,uint Value );
    receive()external payable {
        emit Received(msg.sender , msg.value );

    }
}

contract a {
    event Received (address Sender, uint Value, string message );
    receive()external payable {
        emit Received(msg.sender, msg.value, "receive");
    }
}