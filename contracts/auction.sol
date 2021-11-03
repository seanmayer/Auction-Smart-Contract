//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5 <0.9.0;

contract Auction {
    address payable public owner;
    uint public startBlock;
    uint public endBlock;
    string public ipfsHash;
    
    enum State {Started, Running, Ended, Canceled}
    State public auctionState;
    
    uint public highestBindingBid;
    address payable public highestBidder;
    
    mapping(address => uint) public bids;
    uint bidIncrement;
    
    constructor() {
        owner = payable(msg.sender);
        auctionState = State.Running;
        startBlock = block.number;
        endBlock = startBlock + 40320; //604800 (seconds in a week) / 15 (eth block creation time) = 40320 (blocks created in a week)
        ipfsHash = "";
        bidIncrement = 100;
    }
    
    
}