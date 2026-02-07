import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import * as dotenv from "dotenv";

dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.20",
  networks: {
    polygon: {
      url: process.env.POLYGON_RPC!,
      accounts: [process.env.PRIVATE_KEY!],
    },
    arbitrum: {
      url: process.env.ARBITRUM_RPC!,
      accounts: [process.env.PRIVATE_KEY!],
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC!,
      accounts: [process.env.PRIVATE_KEY!],
    },
  },
};

export default config;
