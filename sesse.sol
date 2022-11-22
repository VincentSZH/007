pragma solidity ^0.8.4;
contract Yeye {
    event Log(string msg);
    function hip() public virtual {
        emit Log("Yeye");
    }
    function pop() public virtual {
        emit Log("Yeye");
    }
    function yeye() public virtual {
        emit Log("Yeye");
    }
}
contract Baba is Yeye{
    function hip() public virtual override {
        emit Log("Baba");
    }
    function pop() public virtual override {
        emit Log("Baba");
    }
    function baba() public virtual {
        emit Log("Baba");
    }
}
contract Erzi is Yeye, Baba {
    function hip() public virtual override (Yeye, Baba) {
        emit Log("Erzi");
    }
    function pop() public virtual override (Yeye,Baba) {
        emit Log("Erzi");
    }
    function callParent() public {
        Yeye.pop();
    }
    function CallSupper() public {
        super.pop();
    }
}
contract base1{
    modifier exactDividedBy2And3(uint _a) virtual {
        require(_a %2 == 0 && _a % 3 == 0);
        _;
    }
}
contract Identifier is base1 {
    function GetexactDividedBy2And3(uint _divided) public exactDividedBy2And3(_divided ) pure returns(uint , uint){
        return GetexactDividedBy2And3WithouModifier(_divided);
    }
    function GetexactDividedBy2And3WithouModifier(uint _divided) public pure returns(uint,uint){
        uint div2 = _divided / 2;
        uint div3 = _divided / 3;
        return(div2,div3);
    }
}