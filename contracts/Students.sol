//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.0;
//กำหนดโครงสร้าง
contract Students {
    struct Student {
        uint id;
        string name;
    }
    //array
    Student[] public students;
    mapping(uint => address) public studentToOwner;

    function registerStudent(uint _id, string memory _name) public {
        students.push(Student(_id, _name));
        studentToOwner[_id] = msg.sender;
    }

    function getStudent(uint _id) public view returns (string memory) {
        require(studentToOwner[_id] == msg.sender, "Not the owner");
        return students[_id].name;
    }
}
