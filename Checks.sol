// ✅ Correct
balance[msg.sender] = 0;
payable(msg.sender).transfer(amount);


//never rerverse the order
