// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title SecureLottery
 * @dev An advanced lottery smart contract with security features
 * @notice PART 2 - Secure Lottery (MANDATORY)
 */
contract SecureLottery {

    address public owner;
    uint256 public lotteryId;
    uint256 public lotteryStartTime;
    bool public isPaused;
    uint public entryId;
    mapping(string => string) public playerMap;

    bytes32[] trackArray;

    // TODO: Define additional state variables
    // Consider:
    // - How will you track entries?
    // - How will you store player information?
    // - What data structure for managing the pot?

    constructor() {
        owner = msg.sender;
        lotteryId = 1;
        lotteryStartTime = block.timestamp;
        isPaused = false;
        entryId = 1;
        playerMap["name"] = "joe";
        playerMap["age"] = "25";
        playerMap["social_credit"] = "0";
    }

    // TODO: Implement entry function
    // Requirements:
    // - Players pay minimum 0.01 ETH to enter
    // - Track each entry (not just unique addresses)
    // - Allow multiple entries per player
    // - Emit event with player address and entry count
    function enter(uint pay, bytes32[] entries) public payable returns (bool){
        // Your implementation here
        // Validation: Check minimum entry amount
        // Validation: Check if lottery is active

        if (pay < 0.01) return false;
        for(uint i = 0; i < entries.length; i++) {
            entry = entries[i];
            trackArray.push(entry)
        }
    }

    // TODO: Implement winner selection function
    // Requirements:
    // - Only owner can trigger
    // - Select winner from TOTAL entries (not unique players)
    // - Winner gets 90% of pot, owner gets 10% fee
    // - Use a secure random mechanism (better than block.timestamp)
    // - Require at least 3 unique players
    // - Require lottery has been active for 24 hours
    function selectWinner(string[] participants) public {
        // if now - lotteryStartTime < 24 hours : return
        l = participants.length;
        if (l < 3) return;
        winner_i = block.blockhash(1) % l;
        return participants[winner_i];
        // Your implementation here
        // CHALLENGE: How do you generate randomness securely?
        // Consider: blockhash, block.difficulty, etc.
    }

    // TODO: Implement circuit breaker (pause/unpause)
    // Requirements:
    // - Owner can pause lottery in emergency
    // - Owner can unpause lottery
    // - When paused, no entries allowed
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this");
        if (isPaused) {
            isPaused = false;
        } else {
            isPaused = true;
        }
    }

    modifier whenNotPaused() {
        require(!isPaused, "Contract is paused");
        _;
    }

    function pause() public onlyOwner {
        // Your implementation
    }

    function unpause() public onlyOwner {
        // Your implementation
    }

    // TODO: Implement reentrancy protection
    // CRITICAL: Prevent reentrancy attacks when sending ETH
    // Use checks-effects-interactions pattern

    // TODO: Helper/View functions
    // - Get current pot balance
    // - Get player entry count
    // - Check if lottery is active
    // - Get unique player count

    function get_current_pot_balance() public {
        return potBalance;
    }
    function get_player_entry_count() public {
        return trackArray.length;
    }
    function check_if_lottery_is_active() public {
        return isPaused;
    }
    function get_unique_player_count() public {
        return trackArray.length;
    }

    // BONUS: Add multiple prize tiers (1st, 2nd, 3rd place)
    // BONUS: Add refund mechanism if minimum players not reached
}
