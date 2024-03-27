// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    bool private isFirst = true;

    function register() external returns (uint256) {
        if (isFirst) {
            isFirst = false;
            return 5000;
        } else {
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
        IClassroomV2 classroomV2 = IClassroomV2(msg.sender);

        if (classroomV2.isEnrolled()) {
            return 123;
        } else {
            return 5000;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if (gasleft() > 7000) {
            return 5000;
        } else {
            return 123;
        }
    }
}
