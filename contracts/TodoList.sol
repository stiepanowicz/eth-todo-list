// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; // state variable

    // task definition
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // task list as a key-value pair, hash table (associative array)
    mapping(uint => Task) public tasks; 

    constructor() public {
        createTask("First task for test");
    }
    function createTask(string memory _content) public { // accept one string argument
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
