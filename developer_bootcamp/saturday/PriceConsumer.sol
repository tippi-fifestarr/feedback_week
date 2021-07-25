//the grid, a digital frontier. 0xF08b6217Aa52389bEa187169378f5a71858DEbFc
pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
 
    AggregatorV3Interface internal priceFeed;
 
    /**
     * Network: Kovan
     * Aggregator: ETH/USD
     * Address: 0x9326BFA02ADD2366b30bacB125260Af641031331
     *
     * or Agg: AUD/ USD
     address: 0x5813A90f826e16dB392abd2aF7966313fc1fd5B8
     * doesn't appear to be an AUD / USD on the mainnet lol
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(0x5813A90f826e16dB392abd2aF7966313fc1fd5B8);
    }
 
    /**
     * Returns the latest price is the current market price of ETH,
     * multiplied by 10^8. You can compare it to the Mainnet ETH/USD
     * Price Feed by going to https://data.chain.link/eth-usd 
     * and looking at the current price. 
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}

