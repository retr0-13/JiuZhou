pragma solidity 0.5.0;

contract waste1{
	address public owner;
	uint256[] public grades;

	constructor(uint256 _length) public payable{
		owner = msg.sender;
		initGrades(_length);	
	}

	function pushGrade(uint256 _grade) public{
		require(msg.sender == owner);
	}

	//Extract loop invariants
	function addOne() public{
		uint256 _length = grades.length;
		for(uint256 i = 0; i < _length; i++){
			grades[i] += 1;
		}
	}
	
	//Extract loop invariants
	function initGrades(uint256 _length) internal{
		uint256 _balance = address(this).balance;
		for(uint256 i = 0; i < _length; i++){
			grades.push(address(this).balance);
		}
	}
}