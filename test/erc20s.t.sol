// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Test, console} from "forge-std/Test.sol";
import {Erc20S} from "../src/Erc20S.sol";
import "forge-std/console.sol";

contract Erc20STest is Test {
    Erc20S public token;
    address public owner = address(1);
    address public user = address(2);

    function setUp() public {
        // Deploy as the specified owner
        owner = address(this);
        token = new Erc20S(owner);
    }

    function testNonOwnercannotMint() public {
        address attcker = address(2);

        vm.prank(attcker);
        vm.expectRevert();
        token.mint(attcker, 100 ether);
    }

    function testTransferFailsWhenPaused() public {
        token.paused();
        vm.expectRevert();
        token.transfer(address(2), 10 ether);
    }

    function testMinttoZeroaddressRevert() public {
        vm.prank(owner);
        vm.expectRevert();
        token.mint(address(0), 100 ether);
    }

    function testTransferOwnership() public {
        address newOwner = address(2);

        token.transferOwnership(newOwner);

        assertEq(token.owner(), newOwner);

        vm.prank(newOwner);
        token.mint(newOwner, 100 ether);
    }

    function testRenounceOwnershipDisablesMint() public {
        console.log("Owner before:", token.owner());

        token.renounceOwnership();

        console.log("Owner after:", token.owner());
        console.log("Test contract:", address(this));

        vm.expectRevert();
        token.mint(address(1), 100 ether);
    }

    function testBurnMoreThanBalanceRevert() public {
        vm.expectRevert();
        token.burn(1_000_000 ether);
    }

    function testFuzz_Transfer(address to, uint256 amount) public {
        vm.assume(to != address(0));
        vm.assume(amount <= token.balanceOf(address(this)));
        token.transfer(to, amount);
    }
}
