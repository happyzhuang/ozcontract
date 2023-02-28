// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BiToken is ERC20 {
    constructor() ERC20("BiToken", "bilibili") {}
}

pragma solidity ^0.8.0;






import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20WithSafeTransfer is ERC20 {
    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal virtual override
    {
        super._beforeTokenTransfer(from, to, amount);

        require(_validRecipient(to), "ERC20WithSafeTransfer: invalid recipient");
    }

    function _validRecipient(address to) private view returns (bool) {
        ...
    }

    ...
}