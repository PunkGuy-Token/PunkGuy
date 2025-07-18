// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PunkGuy is ERC20, ERC20Burnable, Ownable {
    // Metadata
    string private _imageUrl;
    string private _telegram;
    string private _x;
    string private _website;

    // Max supply: 1 miliar token (1B * 10^18)
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18;

    // Event untuk perubahan metadata
    event MetadataUpdated(
        string imageUrl,
        string telegram,
        string x,
        string website
    );

    // Event untuk minting
    event TokensMinted(address indexed to, uint256 amount);

    constructor(
        string memory imageUrl,
        string memory telegram,
        string memory x,
        string memory website
    ) ERC20("PunkGuy", "PUNKGUY") Ownable(msg.sender) {
        // Mint 1 miliar token (1B * 10^18 karena 18 desimal)
        _mint(msg.sender, MAX_SUPPLY);
        
        // Set metadata awal
        _imageUrl = imageUrl;
        _telegram = telegram;
        _x = x;
        _website = website;
    }

    // Fungsi untuk mendapatkan metadata
    function getMetadata()
        public
        view
        returns (
            string memory imageUrl,
            string telegram,
            string x,
            string website
        )
    {
        return (_imageUrl, _telegram, _x, _website);
    }

    // Fungsi untuk memperbarui metadata (hanya owner)
    function updateMetadata(
        string memory newImageUrl,
        string memory newTelegram,
        string memory newX,
        string memory newWebsite
    ) public onlyOwner {
        _imageUrl = newImageUrl;
        _telegram = newTelegram;
        _x = newX;
        _website = newWebsite;

        emit MetadataUpdated(newImageUrl, newTelegram, newX, newWebsite);
    }

    // Fungsi mint (hanya owner)
    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "PunkGuy: cannot mint to zero address");
        require(amount > 0, "PunkGuy: amount must be greater than 0");
        require(totalSupply() + amount <= MAX_SUPPLY, "PunkGuy: exceeds max supply");
        _mint(to, amount);
        emit TokensMinted(to, amount);
    }

    // Fungsi burn sudah diwarisi dari ERC20Burnable
    // Pengguna dapat memanggil burn(amount) atau burnFrom(spender, amount)

    // Override decimals (opsional, default sudah 18)
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}
