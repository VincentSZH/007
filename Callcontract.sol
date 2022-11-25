pragma solidity ^0.8.4;
contract Othercontract{
    uint256 private _x = 0;
    event Log(uint amount, uint gas);
    fallback() external payable {}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    function setX(uint256 x) external payable {
        _x = x;
        if(msg.value > 0){
            emit Log(msg.value, gasleft());
        }
    }
    function getX() external view returns(uint x) {
        x = _x;
    }
}
contract Call {
    event Response( bool success , bytes data );
    function callSetX(address payable _addr, uint256 x) public payable {
    (bool success, bytes memory data) = _addr.call{value: msg.value}(
        abi.encodeWithSignature("setX(uint256)", x)
    );

    emit Response(success, data); 
}
}
