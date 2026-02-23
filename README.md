smart-contracts/
├── contracts/
│   ├── core/
│   │   ├── PricingPolicy.sol
│   │   ├── PaymentSettlement.sol
│   │   ├── RebateEngine.sol
│   │   └── VestingVault.sol
│   │
│   ├── treasury/
│   │   └── MultiSigTreasury.sol
│   │
│   ├── factory/
│   │   └── CustomerFactory.sol
│   │
│   └── interfaces/
│       └── IPricingPolicy.sol
│
├── scripts/
│   ├── deploy/
│   │   ├── deployPricing.ts
│   │   ├── deploySettlement.ts
│   │   ├── deployFactory.ts
│   │   └── deployAll.ts
│   │
│   └── admin/
│       ├── setPricing.ts
│       └── fundRebates.ts
│
├── test/
│   ├── pricing.test.ts
│   ├── settlement.test.ts
│   ├── rebate.test.ts
│   └── vesting.test.ts
│
├── hardhat.config.ts
├── package.json
├── tsconfig.json
├── .env
└── README.md



Tokenization 
1) Only the owner can mint the dTesla
2) Anyone can redeem dtSLA for USDC or "the stable coin" of choice
3) CHainlink functions will kick off a TSLA
4) The user will have to then call finish Redeem to get their USDC
