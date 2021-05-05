//specify solidity version
 pragma solidity ^0.4.24;
 
 //define the contract
 contract BlockTrans{
     string trans;
     //create function writing a translation entry to a smart contract
     function setTrans(string _trans) public{
         trans = _trans;
     }
     //create a function that reads the translation from the smart contract
     function getTrans() public view returns(string){
         return trans;
     }
 }
