pragma solidity ^0.4.0;
contract CounterContract {
    
    uint256 counter = 0;
    address owner = msg.sender;
    
    function addCounter() public {
        counter++;
    }
    
    function subCounter() public {
        counter--;
    }
    
    function getCounter() public constant returns (uint256) {
        return counter;
    }
    
    // self destructs the contract
    function killContract() public {
        if (owner == msg.sender) {
            selfdestruct(owner);
        }
    }
    
}
