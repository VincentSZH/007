pragma solidity ^0.8.4;
contract overLoading {
    function something() public pure returns(string memory ) {
        return("Nothing");
    }
    function something(string memory something) public pure returns( string memory ) {
        return(something);
    }

}