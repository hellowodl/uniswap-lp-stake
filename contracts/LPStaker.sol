pragma solidity ^0.7;

import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";

contract LPStaker {
    IUniswapV2Pair pair;

    constructor () {
        pair = IUniswapV2Pair(0xA8d852A4D5F79860816D7503E6457Ac47964809D);
    }

    function deposit () public {
        uint112 reserve0;
       ( reserve0,, ) = pair.getReserves();
    }

    function getShare () public view {
        uint112 totalTokens;
        (totalTokens,,) = pair.getReserves();

        uint256 balance = pair.balanceOf(msg.sender);
        uint256 share = balance / totalSupply;
    }

}