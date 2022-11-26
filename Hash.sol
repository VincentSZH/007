pragma solidity ^0.8.4;
contract Hash {
    bytes32 _msg = keccak256(abi.encodePacked("0xAA"));
    function hash(
        uint _num,
        address _addr,
        string memory _string
    )
    public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_num, _string, _addr));
        }
    
    function week(string memory _string) public view returns(bool) {
        return keccak256(abi.encodePacked(_string)) == _msg;
    }
    function strong(string memory string1, string memory string2) public pure returns(bool) {
        return keccak256(abi.encodePacked(string1)) == keccak256(abi.encodePacked(string2));
    }
}