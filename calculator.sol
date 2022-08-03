// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract Calculator{

    function Plus(uint x, uint y) public pure returns(uint){
        return x + y;
    }

    function Sub(uint x, uint y) public pure returns(uint){
        return x - y;
    }

    function Mul(uint x, uint y) public pure returns(uint){
        return x * y;
    }

    function Div(uint x, uint y) public pure returns(uint){
        require(y != 0, " Bu sayi gecersiz.");
        return x / y;
    }
}
