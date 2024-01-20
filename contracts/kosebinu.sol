// SPDX-License-Identifier: MIT

// QUESTION
// Assign students to write a simple arithmetic smart contract 
//on Arbitrum Sepolia to find an odd number, an even number, and most significant bits.
pragma solidity ^0.8.0;

contract Assignment{
   function odd(uint256 number) public pure returns (bool) {
        return number % 2 != 0;
    }

    // Function to check if a number is even
    function Even(uint256 number) public pure returns (bool) {
        return number % 2 == 0;
    }

    // Function to get the most significant bits of a number
    // MOST SIGNIFICANT IS THE HIGHEST BINARY E.G 1101 THE MSB IS 1 

    function mostSignificantBits(uint256 number, uint8 numberOfBits) public pure returns (uint256) {
        // the require below is used to give a condition of numberOfBit range, then if it 
        // is not true then we print the result 'Invalid number of bits'
        // the line of code is to make the user restricted to the numbers he/she can input 
        // otherwise it prints the message invalid number of bit 

        require(numberOfBits > 0 && numberOfBits <= 256, "Invalid number of bits");

        // Calculate the mask to extract the most significant bits
        // the 1<< numberOfBit means one number to the left
        uint256 mask = (1 << numberOfBits) - 1;

        // Extract and return the most significant bits
        return number >> (256 - numberOfBits) & mask;
    }
}