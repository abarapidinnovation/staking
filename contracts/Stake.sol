pragma solidity >=0.4.21 <0.7.0;
import './Erc20Token.sol';
import './SafeMath.sol';

contract TokenTransfer {

    function getValue(address DAddress) public view returns(uint a){
        Erc20Token d = Erc20Token(DAddress);
        a = d.totalSupply();
        return a;
    }

    // using SafeMath for uint256;
    // Erc20Token token = new Erc20Token();
    // enum time {seven, thirty, ninety}
    // uint256 valid;
    // time _unstakeTime;
    // string value;
    // struct stakeInfo {
    //     uint256 id;
    //     address tokenOwner;
    //     uint256 valid;
    //     uint256 _amount;
    // }

    // stakeInfo[] public array;
    // mapping(uint256 => stakeInfo) stakeArray;
    // uint256 public stakeIds;

    // mapping(address => uint256) amount;

    // event Stake(
    //     address indexed from,
    //     uint256 amount,
    //     uint256 validUntil,
    //     uint256 id
    // );
    // event Unstake(address indexed from, uint256 amount);

    // uint256 count = 1;
    // uint256 id;

    // constructor() public {
    //     value = "500";
    //     stakeIds = 0;
    // }

    // function stake(address tokenOwner, uint256 _amount, time _unstakeDate)
    //     public
    //     returns (bool)
    // {
    //     // stakeInfo storage arr = stakeArray[id];
    //     _unstakeTime = _unstakeDate;
    //     if (_unstakeDate == time.seven) {
    //         stakeArray[stakeIds].valid = now.add(604800);
    //     } else if (_unstakeDate == time.thirty) {
    //         stakeArray[stakeIds].valid = now.add(2592000);
    //     } else {
    //         stakeArray[stakeIds].valid = now.add(7776000);
    //     }
    //     stakeArray[stakeIds].tokenOwner = tokenOwner;
    //     stakeArray[stakeIds]._amount = _amount;
    //     stakeArray[stakeIds].id = count++;
    //     require(_amount != 0, "Amount can not be 0");
    //     require(_amount <= token.balances[tokenOwner], "Insufficient balance");
    //     token.balances[tokenOwner] = token.balances[tokenOwner].sub(_amount);
    //     amount[tokenOwner] = amount[tokenOwner].add(_amount);
    //     stakeIds++;
    //     emit Stake(tokenOwner, _amount, valid, id);
    //     return true;
    // }

    // function tokensStaked(address tokenOwner)
    //     public
    //     view
    //     returns (stakeInfo[] memory)
    // {
    //     stakeInfo[] memory values = new stakeInfo[](stakeIds);
    //     for (uint256 i = 0; i < stakeIds; i++) {
    //         if (stakeArray[i].tokenOwner == tokenOwner) {
    //             stakeInfo storage arr = stakeArray[i];
    //             values[i] = arr;
    //         }
    //     }
    //     return values;
    // }

    // function availableToken(address tokenOwner) public view returns (uint256) {
    //     return token.balances[tokenOwner];
    // }

    // function unstake(address tokenOwner, uint256 _unstakeAmount)
    //     public
    //     returns (bool)
    // {
    //     require(_unstakeAmount != 0, "Amount can not be 0");
    //     require(
    //         _unstakeAmount <= amount[tokenOwner],
    //         "Insufficient balance in stake"
    //     );
    //     // require(now <= valid, "Unstaking not allowed");

    //     token.balances[tokenOwner] = token.balances[tokenOwner].add(_unstakeAmount);
    //     amount[tokenOwner] = amount[tokenOwner].sub(_unstakeAmount);
    //     emit Unstake(tokenOwner, _unstakeAmount);
    //     return true;
    // }

    // function reward(address tokenOwner) public {
    //     if (_unstakeTime == time.seven) {
    //         token.balances[tokenOwner] = token.balances[tokenOwner].add(
    //             token.balances[tokenOwner].percentage(4)
    //         );
    //     } else if (_unstakeTime == time.thirty) {
    //         token.balances[tokenOwner] = token.balances[tokenOwner].add(
    //             token.balances[tokenOwner].percentage(5)
    //         );
    //     } else {
    //         token.balances[tokenOwner] = token.balances[tokenOwner].add(
    //             token.balances[tokenOwner].percentage(7)
    //         );
    //     }
    // }
}
