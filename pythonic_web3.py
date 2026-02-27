from web3 import Web3

# 1. Connect to a Provider (e.g., Alchemy or Infura)
RPC_URL = "https://base-mainnet.g.alchemy.com/v2/YOUR_API_KEY"
w3 = Web3(Web3.HTTPProvider(RPC_URL))

# 2. Contract Details
contract_address = "0x123..." 
abi = [...] # Your contract's ABI (generated when you compile Solidity)

# 3. Initialize Contract
contract = w3.eth.contract(address=contract_address, abi=abi)

# 4. Interact (Read a value)
def get_vault_balance():
    balance = contract.functions.totalRevenue().call()
    return w3.from_wei(balance, 'ether')

print(f"Current Vault Revenue: {get_vault_balance()} ETH")
