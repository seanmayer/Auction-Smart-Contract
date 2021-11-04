#Auction Smart Contract

Smart Contract for Decentralised Auction, similar to Ebay

- The Auction has an owner (the seller), a start and an end date;
- The owner can cancel the auction, or finalise the auction after its end time
- People are sending ETH by calling a function called `placeBid()`
    - The sender's address and the value sent to the auction will be stored in the mapping variable called bids;
- Users are incentivised to bid the maximum amount
    - Although they are bound to the full amount
    - The contract will be able to automatically bid up to a given amount 
- The `highestBindingBid` is the selling price
- The `highestBidder` the person who won the auction
- When auction completes, the owner gets the `highestBindingBid`
    - Everybody else withdraws their amount

Timestamps
- Timestamp with used for `startBlock` and `endBlock`
- Using the block number to calculate the time because it is safer
- It is noted that the Ethereum block time is roughly 15 seconds
    - Meaning that a new block is created and added to the blockchain
- Based on the blocktime we can calculate when the auction starts and ends

Withdrawal Pattern
- We do not proactively send back the funds to users that did not win the auction. We will use the "withdrawal pattern" instead.
- We should only send ETH to a user when he explicitly requests it
- This is the "withdrawal" pattern and this enables the contract from avoiding re-entrace attacks that could induce unexpected behaviours, including financial loss for users.

 
