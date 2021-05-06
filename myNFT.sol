pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// rikeby provider https://eth-rinkeby.alchemyapi.io/v2/X5W0i6RiSfCaudFIrGhwBBtO3EOiNivs

contract NFT is ENJ {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ENJ("GameItem", "ITM") {}

    mapping(uint => string) tokenURIs;

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
      return tokenURIs[tokenId];
    }

    function create(address player, string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        tokenURIs[newItemId] = tokenURI;

        return newItemId;
    }
}
