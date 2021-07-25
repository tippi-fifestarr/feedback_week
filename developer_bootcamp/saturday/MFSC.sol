//non-bonus version deployed via remix to kovan at
//https://kovan.etherscan.io/address/0xED4DA499a42a5A801fc5F2c474a27511ff3967D7

//shoutout to harry P. on the chainlink dev bootcamp vidscreen

//inevitable questions in the chat about using this version or .8.0 etc
pragma solidity ^0.6.7;

//remind that .sol can have more than one contract in it, and that these contracts
//each live together or maybe somehow seperately (nuance?) on the blockchain address.
contract MyFirstSmartContract {
    
    uint number = 0;
    
    //dynamic array (variable size, yo)
    string[] names;
    //is this mapping a mapping of the string array or just of all possible strings
    mapping (string => uint) public phoneNumbers;
    
    //comment not necessary because perfectly named 
    function addName(string memory _name) public {
        names.push(_name); //simply push the _convention
    }
    
    //another pedagogically necessary demonstration of an abstracted/
    //unneccessary feature (public view functions)
    function getName(uint _index) public view returns (string memory) {
        return names[_index];
    }
    
    //this is a funky function to add a name:number key:value pair to the phoneNumbers mapping 
    function addMobileNumber(string memory _name, uint _mobileNumber) public {
        phoneNumbers[_name] = _mobileNumber;
    }
    
    //looks like we need this for the mobile numbers because its a look up for a string
    //not just returning a public variable
    function getMobileNumber(string memory _name) public view returns (uint) {
        return phoneNumbers[_name];
    }
    
    //bonus trick, change number increments instead of storing
    // notice the naming convention for user input variables
    function changeNumber(uint256 _num) public {
        number = number + _num;
    }
    
    function getNumber() public view returns (uint256) {
        return number;
    }
}
