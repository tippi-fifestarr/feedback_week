//intentionally changed solidity version to a new one?
pragma solidity =0.7.3;
contract MyFirstContract {
 
    uint256 number;
 
 
    function setNumber(uint256 _num) public {
        number = _num;
    }
 
 
    function getNumber() public view returns (uint256){
        return number;
    }
}
