pragma solidity ^0.8.4;
interface Name {
    function getFirstName() external pure returns(string memory );
    function getLastName() external pure returns(string memory );
}
contract Fullname is Name {
    function getFirstName() external pure override returns(string memory ) {
        return("Li");
    }
    function getLastName() external pure override returns(string memory ) {
        return("Jiang");
    }
}

abstract contract Base {
    string public name = "Base";
    function getAlias() public pure virtual returns(string memory);

}
contract Baseimfo is Base {
    function getAlias() public pure override returns(string memory){
    return("Baseimfo");
    }
}