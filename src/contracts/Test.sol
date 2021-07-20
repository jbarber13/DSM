// SPDX-License-Identifier: LICENSE

pragma solidity >=0.5.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";



contract B{
    uint256 y = 1;

    function read() internal view returns (uint256){
        return y;
    }
}

contract A is B{
    using SafeMath for uint256;

    uint256 x = 1;

    event Sum(uint256 sum);

    function print(address addressB) public {
        uint256 sum = 0;
        sum  = (mul(x, 2) + mul(y, 3));
        emit Sum(sum);
    }
}