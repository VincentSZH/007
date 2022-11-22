pragma solidity ^0.8.4;
contract overLoading {
    function something() public pure returns(string memory ) {
        return("Nothing");
    }
    function something(string memory something) public pure returns( string memory ) {
        return(something);
    }
    function f(uint8 _in) public pure returns(uint out) {
        out = _in;
    }
    function f(uint256 _in) public pure returns(uint256 out) {
        out = _in;
    }

}