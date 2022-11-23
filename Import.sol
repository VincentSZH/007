pragma solidity ^0.8.4;
import "./sesse.sol";
import {Yeye} from "./sesse.sol";
import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract Import {
    using Address for address;
    Yeye yeye = new Yeye();
    function test() external {
        yeye.hip();
    }
}
