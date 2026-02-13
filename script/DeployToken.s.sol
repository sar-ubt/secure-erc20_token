//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/script.sol";
import "../src/Erc20S.sol";

contract DeployToken is Script {
    function run() external {
        uint256 deployerKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerKey);

        vm.startBroadcast(deployerKey);

        new Erc20S(deployer);

        vm.stopBroadcast();
    }
}
