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
    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;
    function createPair(address tokenA, address tokenB) external returns(address pairAddr) {
        Pair pair = new Pair();
        pair.initialize(tokenA,tokenB);
        pairAddr = address(paira);
        allPairs.push(pairAddr);
        getPair[tokenA] [tokenB] = pairAddr;
        getPair[tokenB] [tokenA] = pairAddr;
    }
}