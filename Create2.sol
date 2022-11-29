pragma solidity ^0.8.4;
contract Pair {
    address public factory;
    address public token0;
    address public token1;
    constructor () payable {
        factory = msg.sender;
    }
    function initialize(address _token0, address _token1) external {
        require (msg.sender == factory,"UniswapV2 : FORBIDDEN");
        token0 = _token0;
        token1 = _token1;
    }
} 
contract PairCreate2 {
    mapping(address =>  mapping(address => address)) public getPair;
    address[] public allPairs;
    function creactPair2(address tokenA, address tokenB) external returns(address pairAddr) {
        require(tokenA != tokenB, "IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB ? (tokenA , tokenB) : (tokenB, tokenA);
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
    }
}