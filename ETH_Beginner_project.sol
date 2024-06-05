// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Tkn-1";
    string public tokenAbbrv = "MyTkn";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _mintadd, uint _val) public {
        totalSupply += _val;
        balances[_mintadd] += _val;
    }

    function burn(address _burnadd, uint _val) public {
        if(balances[_burnadd]>=_val)
        {
            totalSupply -= _val;
            balances[_burnadd] -= _val;
        }
    }
}
