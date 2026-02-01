pragma solidity ^0.8.20;

contract SecureSettlement {
    address public owner;
    uint256 public lockedAmount;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function deposit() public payable {
        require(msg.value > 0, "No funds");
        lockedAmount += msg.value;
    }

    function release(address payable recipient) public onlyOwner {
        require(lockedAmount > 0, "Nothing to release");
        uint256 amount = lockedAmount;
        lockedAmount = 0;
        recipient.transfer(amount);
    }
}
