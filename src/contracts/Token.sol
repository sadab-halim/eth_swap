pragma solidity ^0.5.0;

contract Token {
    string public name = "DApp Token";
    string public symbol = "DAPP";
    
    uint256 public totalSupply = 1000000000000000000000000;
    unit8 public decimals = 18;   

    event Transfer(
        address indexed _form,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner.
        address indexed _spender,
        unit256 _value
    );

    mapping(address => unit256) public balanceOf;
    mapping(address => mapping(address => unit256)) public allowance;

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, unit256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address, _spender, unit256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function transferFrom(address _from, address _to, unit256 _value) public returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= value;
        emit Transfer(_from, _to, _value);
        return true;
    }
}