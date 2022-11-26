pragma solidity ^0.8.4;
contract Pair {
    address public factory;
    address public token1;
    address public token2;
    constructor() payable {
        factory = msg.sender;
    }
    function initialize(address _token1, address _token2) external {
        require(msg.sender == factory, "UniswapV2 : FORBIDDEN");
        token1 = _token1;
        token2 = _token2;
    }
}
contract PairFactory {
    
}