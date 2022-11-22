pragma solidity ^0.8.4;
interfact Base{
    function getFirstName() external pure returns(string memory );
    function getLastName() external pure returns(string memory );
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