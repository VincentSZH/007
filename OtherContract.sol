pragma solidity ^0.8.4;
contract OtherContract {
    uint256 private _x = 0;
    event Log(uint amount, uint gas);
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    function setx(uint256 x) external payable{
        _x = x;
        if(msg.value > 0){
            emit Log(msg.value, gasleft());
        }
    }
    function getx() external view returns(uint x) {
        x =  _x;
    }
}
contract Callcontract{
    function callSetX(address _address, uint256 x) external {
        OtherContract(_address).setx(x);
    }
    function callGetX(OtherContract _address) external view returns(uint x){
        x = _address.getx();
    }
    function callGetX2(address _address) external view returns(uint x){
        OtherContract oc = OtherContract(_address);
        x = oc.getx();
    }
}