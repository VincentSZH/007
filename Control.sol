pragma solidity ^0.8.4;
contract control {
    function ifelsetest(uint256 _num) public pure returns(bool) {
        if(_num == 10 ){
            return(true);
        }else{
            return(false);
        }
    }
    function forlooptest() public pure returns(uint256) {
        uint sum = 0;
        for(uint i = 0; i < 10 ; i++) {
            sum += i;
        }
        return(sum);
    }
    function whiletest() public pure returns(uint256) {
        uint sum = 0;
        uint i = 0;
        while(i < 10 ){
            sum += i;
            i ++;
        }
        return(sum);
    }
    function dowhiletest() public pure returns (uint256) {
        uint sum = 0;
        uint i = 0;
        do{
            sum += i;
            i ++;
        }while(i < 10);
        return(sum);
    }
    function ternarytest(uint256 x, uint256 y) public pure returns (uint256){
        return x >= y ? x: y; 
    }
    function insertionset(uint[] memory a) public pure returns(uint[] memory ) {
        for (uint i = 1; i < a.length; i++) {
            uint temp = a[i];
            uint j = i;

            while((j >= 1) && (temp < a[j-1])) {
                a[j] = a [j-1];
                j--;

            }
            a[j] = temp;
        }
        return(a);
    }
}