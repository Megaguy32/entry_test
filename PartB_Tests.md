# Part B: Test Scenarios Guide

**Complete test scenarios for BOTH contracts.**

---

## Test Scenario 1: SkillsMarketplace
**Target:** `SkillsMarketplace.sol`

### 1.1 Happy Path
**Description**: Test successful gig posting and payment.
- **Steps**: ...
```solidity
function testThatPathIsHappy() {
    return false;
}
```
- **Expected Result**: false

### 1.2 Security/Edge Case
**Description**: Attempt reentrancy or unauthorized access.
- **Steps**: ...
function testForSecurityEdgeCase() {
    return false;
}
- **Expected Result**: false

---

## Test Scenario 2: SecureLottery
**Target:** `SecureLottery.sol`

### 2.1 Happy Path
**Description**: Test entry and winner selection.
- **Steps**:
```solidity
function testEntryAndWinner() {
    string x = testwinner();
    return false;
}
```
- **Expected Result**: false

### 2.2 Security/Edge Case
**Description**: Test randomness manipulation or insufficient funds.
- **Steps**:
```solidity
function testRandomnessManipulation() {
    string x = randomness();
    return false;
}
```
- **Expected Result**: false

---

## Coverage Assessment
After implementing your tests in `test/`, assess your coverage:
1. **Link to test files:** (e.g., `test/SkillsMarketplace.test.js`)
2. **Key functions tested:**
3. **Estimated Coverage:** (Aim for 80%+)

> [!TIP]
> Use `npx hardhat coverage` if you have the plugin installed, otherwise manually verify all state transitions are tested.
