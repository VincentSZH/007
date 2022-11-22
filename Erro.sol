pragma solidity ^0.8.4;
contract Erro{
    error transferNotOwner();
    mapping (uint256 => address) private _owners;
    function transferOwner1(uint256 tokenid, address newOwner) public {
        if(_owners[tokenid] != msg.sender ){
            revert transferNotOwner();
        }
        _owners[tokenid] = newOwner;
    }
    function transferOwner2(uint256 tokenid, address newOwner) public {
        require (_owners[tokenid] == msg.sender,"Transfer not Owner!");
        _owners[tokenid] = newOwner;
    }
    function transferOwner3(uint256 tokenid, address newOwner) public {
        assert (_owners[tokenid] == msg.sender);
        _owners[tokenid] = newOwner;
    }

}