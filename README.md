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
