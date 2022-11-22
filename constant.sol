pragma solidity ^0.8.4;
contract Constant{
    uint256 public constant Constant_num = 10;
    string public  constant Constant_string = "WTF";
    bytes public constant Constant_bytes = "0xaa";
    address public constant Constant_address = 0x0000000000000000000000000000000000000000;
    
    uint256 public immutable Immutable_num = 9999;
    address public immutable Immutable_address;
    uint256 public immutable Immutable_block;
    uint256 public immutable Immutable_test;
    constructor() {
        Immutable_address = address(this);
        Immutable_block = block.number;
        Immutable_test = test();
    }
    function test() public pure returns(uint256){
        uint256 what = 9;
        return(what);
    }
}