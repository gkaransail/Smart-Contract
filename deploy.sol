async function main() {
  const PricingPolicy = await ethers.getContractFactory("PricingPolicy");
  const pricing = await PricingPolicy.deploy();
  await pricing.deployed();

  const Settlement = await ethers.getContractFactory("PaymentSettlement");
  const settlement = await Settlement.deploy(pricing.address);
  await settlement.deployed();

  console.log("Pricing:", pricing.address);
  console.log("Settlement:", settlement.address);
}
