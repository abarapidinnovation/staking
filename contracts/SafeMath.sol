pragma solidity >=0.4.21 <0.7.0;

library SafeMath {
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

    function percentage(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a * b;
        assert(c >= a);
        c = c / 100;
        return c;
    }
}