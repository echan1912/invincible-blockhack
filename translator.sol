pragma solidity >=0.7.0 <0.9.0;

contract translator {

  address public sender;
  address public receiver;
  address constant approver = [0];

  function deposit(address _manager) external payable {
    require(msg.value > 0);
    translator = msg.sender;
    manager = _receiver;
  }

  funtion viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
  }
} 