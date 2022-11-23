pragma solidity ^0.8.4;
contract Homework {
    uint[] private array1;
    address public owner;
    constructor () {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    function save(uint[] calldata _nums) public {
        for(uint i = 0; i < _nums.length; i++){
            array1.push(_nums[i]);
        }
    }
    function show() public view returns(uint[] memory array2) {
        array2 = array1;
    }
    function del() external onlyOwner{
        array1.pop();
    }
}