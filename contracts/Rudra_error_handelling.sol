// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

contract Rudra_error_handelling{

    uint public count=0;

    function mine_Require(uint supply) public{
        require(supply > 2000,"supply  greater than 2000");
        count++;
    }

    function mine_Revert(uint supply) public {
        if(!(supply > 2000)){
            revert("supply should be greater than 2000");
        }
        count++;
    }

    function mine_Assert(uint supply) public{
        assert(supply > 2000);
        count++;
    }
    }