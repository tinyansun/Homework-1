// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 public code = 1000;
    bool public isEnrolled;

    function register() external returns (uint256) {
        if(!isEnrolled){
            isEnrolled = true;
            return code;
        }
        else{
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if ((IClassroomV2(msg.sender).isEnrolled()) != false){
            return 123;
        }
        else{
            return 1000;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if(gasleft() < 7000){
            return 123;
        }
        else{
            return 1000;
        }
    }
}
