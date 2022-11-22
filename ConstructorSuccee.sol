pragma solidity ^0.8.4;
abstract contract A {
    uint public a;
    constructor (uint _a){
        a = _a;
    }
}

contract C is A {
    constructor(uint c) A(c * c) {}
}