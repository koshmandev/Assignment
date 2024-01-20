//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

 contract Assignment {
//     // To check if the number is odd 
//     // firstly i have to create functions for each of my activity

    function odd(uint256 number) public pure  returns (bool) {

        return number % 2 != 0;
        // meaning that if an odd number divides 2 then there will be remainder which can never be 0

   }

   function even(uint256 number) public pure returns (bool) {

    return number % 2 ==0;
   }

   function getMostSignificantBits(uint256 number, uint256 numberOfBits) public pure returns (uint256){
         require(numberOfBits > 0 && numberOfBits <= 256, "Invalid number of bits");
         uint256 mask = (1 << numberOfBits) - 1;
         return number >> (256 - numberOfBits) & mask;

   }
 }

    
