pragma solidity ^0.8.4;
contract Yeye {
    event Log(string msg);
    function hip() public virtual {
        emit Log("Yeye");
    }
    function pop() public virtual {
        emit Log("Yeye");
    }
    function yeye() public virtual {
        emit Log("Yeye");
    }
}
contract Baba is Yeye{
    function hip() public virtual override {
        emit Log("Baba");
    }
    function pop() public virtual override {
        emit Log("Baba");
    }
    function baba() public virtual {
        emit Log("Baba");
    }
}