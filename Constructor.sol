pragma solidity ^0.8.4;
contract Owner{
    address public owner;
constructor() {
    owner = msg.sender;
}
modifier onlyOwner {
    require (msg.sender == owner);
    _;
}
function changeOnwer(address _newOwner)external onlyOwner {
    owner = _newOwner;
}
}