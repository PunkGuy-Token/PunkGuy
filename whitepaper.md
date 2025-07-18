# Whitepaper: PunkGuy Token (PUNKGUY)
**Version 1.0**  
**Date: July 18, 2025**

## 1. Introduction
PunkGuy is a meme token built on the Ethereum blockchain, inspired by the rebellious, free-spirited ethos of punk culture. Designed to empower its community, PunkGuy combines the fun and virality of meme tokens with a commitment to transparency, decentralization, and community-driven growth. Our mission is to create a token that resonates with those who dare to challenge the status quo, fostering a vibrant ecosystem where creativity and freedom thrive.

PunkGuy is not just a token—it's a movement. With a capped total supply of 1 billion tokens, burn and mint functionalities, and a community-focused roadmap, PunkGuy aims to redefine the meme coin space by blending humor, rebellion, and utility.

## 2. Vision and Mission
**Vision**: To create a decentralized, community-driven meme token that embodies the punk spirit of rebellion, creativity, and independence.  
**Mission**:  
- Build a strong, engaged community that drives the PunkGuy ecosystem.  
- Promote transparency through open-source smart contracts and clear tokenomics.  
- Deliver fun and innovative features, such as NFT integrations and community events.  
- Establish PunkGuy as a leading meme token with real-world impact.

## 3. Tokenomics
PunkGuy (PUNKGUY) is an ERC-20 token with the following specifications:

- **Token Name**: PunkGuy  
- **Ticker**: PUNKGUY  
- **Total Supply**: 1,000,000,000 tokens (capped)  
- **Decimals**: 18  
- **Contract Address**: 0xD17E4f613168E7Edd8B419Ceee142F2a8de07eFE  
- **Blockchain**: Base

### Distribution
- **Initial Mint**: 100% of the total supply (1 billion tokens) is minted to the deployer’s address upon contract deployment.  
- **Future Distribution**: Tokens may be distributed via community initiatives, partnerships, or liquidity pools, as determined by the community and project team.  

### Key Features
- **Burn Mechanism**: Available to all token holders, allowing users to burn (destroy) their tokens, reducing the total supply. This creates potential deflationary pressure and supports long-term value.  
- **Mint Mechanism**: Restricted to the contract owner, with a strict cap at 1 billion tokens. Additional minting is only possible if tokens are burned, ensuring the total supply never exceeds the cap.  
- **Metadata**: The smart contract includes updatable metadata (image URL, Telegram, X, website) to maintain relevance and transparency. Updates are restricted to the contract owner.

### Token Utility
- **Community Governance**: PUNKGUY holders can participate in community-driven decisions, such as event planning or partnership proposals.  
- **NFT Integration**: Future plans include exclusive PunkGuy-themed NFTs for token holders.  
- **Staking and Rewards**: Planned staking mechanisms to incentivize long-term holding.  
- **Merchandise and Events**: Tokens may be used for exclusive merchandise or access to PunkGuy community events.

## 4. Technical Details
PunkGuy is built using the ERC-20 standard with additional features from OpenZeppelin’s audited libraries. Key technical aspects include:

- **Smart Contract**: Deployed on Ethereum, leveraging OpenZeppelin’s `ERC20`, `ERC20Burnable`, and `Ownable` contracts.  
- **Max Supply Cap**: Hard-coded at 1,000,000,000 tokens to prevent inflation.  
