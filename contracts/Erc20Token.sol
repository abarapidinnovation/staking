pragma solidity >=0.4.21 <0.7.0;
import './SafeMath.sol';

contract Erc20Token {
    string public constant name = "Rapid";
    string public constant symbol = "BSC";
    uint8 public constant decimals = 4;

    event Approval(
        address indexed tokenOwner,
        address indexed spender,
        uint256 tokens
    );
    event Transfer(address indexed from, address indexed to, uint256 tokens);

    mapping(address => uint256) balances;

    mapping(address => mapping(address => uint256)) allowed;

    uint256 totalSupply_;

    uint256 supply;
    using SafeMath for uint256;

    constructor() public {
        totalSupply_ = 10000000;
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public view returns (uint256) {
        return balances[tokenOwner];
    }

    function transfer(address receiver, uint256 numTokens)
        public
        returns (bool)
    {
        supply = totalSupply_;
        require(numTokens <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] = balances[msg.sender].sub(numTokens);
        balances[receiver] = balances[receiver].add(numTokens);
        emit Transfer(msg.sender, receiver, numTokens);
        return true;
    }

    function approve(address delegate, uint256 numTokens)
        public
        returns (bool)
    {
        allowed[msg.sender][delegate] = numTokens;
        emit Approval(msg.sender, delegate, numTokens);
        return true;
    }

    function allowance(address owner, address delegate)
        public
        view
        returns (uint256)
    {
        return allowed[owner][delegate];
    }

    function transferFrom(address owner, address buyer, uint256 numTokens)
        public
        returns (bool)
    {
        require(numTokens <= balances[owner], "Insufficient token");
        require(numTokens <= allowed[owner][msg.sender], "Not Allowed");

        balances[owner] = balances[owner].sub(numTokens);
        allowed[owner][msg.sender] = allowed[owner][msg.sender].sub(numTokens);
        balances[buyer] = balances[buyer].add(numTokens);
        emit Transfer(owner, buyer, numTokens);
        return true;
    }
}
