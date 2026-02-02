pragma solidity ^0.8.20;

contract RebateProgram {
    address public owner;
    uint256 public rebatePercent = 10;
    uint256 public minVolume = 100;
    uint256 public programEnd;

    struct Rebate {
        uint256 totalVolume;
        bool paid;
    }

    mapping(address => Rebate) public rebates;

    constructor(uint256 _programEnd) {
        owner = msg.sender;
        programEnd = _programEnd;
    }

    function fundRebates() public payable {
        require(msg.sender == owner, "Only owner");
        require(msg.value > 0, "No funds");
    }

    function recordPurchase(address customer, uint256 volume) public {
        require(block.timestamp <= programEnd, "Program ended");
        rebates[customer].totalVolume += volume;
    }

    function calculateRebate(address customer) public view returns (uint256) {
        Rebate memory r = rebates[customer];
        if (r.totalVolume < minVolume) return 0;
        return (r.totalVolume * rebatePercent) / 100;
    }

    function claimRebate() public {
        require(block.timestamp > programEnd, "Program not ended");

        Rebate storage r = rebates[msg.sender];
        require(!r.paid, "Already paid");

        uint256 rebateAmount = calculateRebate(msg.sender);
        require(rebateAmount > 0, "Not eligible");

        r.paid = true;
        payable(msg.sender).transfer(rebateAmount);
    }
}
