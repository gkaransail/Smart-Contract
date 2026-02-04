constructor(
    address _beneficiary,
    uint256 _start,
    uint256 _cliffDuration,
    uint256 _duration
) payable {
    beneficiary = _beneficiary;
    start = _start;
    cliff = _start + _cliffDuration;
    duration = _duration;
    totalAmount = msg.value;
}
