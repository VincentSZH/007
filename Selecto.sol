pragma solidity ^0.8.4;
contract selector {
    event Log(bytes data);
    function mint(address to ) external {
        emit Log(msg.data);
    }
}