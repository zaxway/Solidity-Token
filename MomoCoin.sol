pragma solidity ^0.5.0;

import './IERC20.sol';

contract MomoCoin is IERC20 {
    // this represents 1 million momo tokens
    uint public constant _totalSupply = 1000000;

    string public constant _symbol = "MOMO";
    string public constant _name = "MomoCoin";
    uint8 public constant _decimals = 3;

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;

    constructor() public {
        // first balance to initialize for ourselves
        balances[msg.sender] = _totalSupply;
    }

    function name() external view returns (string memory _nam) {
        return _name;
    }

    function symbol() external view returns (string memory _symbo) {
        return _symbol;
    }

    function decimals() external view returns (uint8 _decimal) {
        return _decimals;
    }

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address _owner) external view returns (uint256 balance) {
        return balances[_owner];
    }

    function transfer(address _to, uint256 _value) external returns (bool success) {
        // the require statement works like an if statement.
        // if anythting in require adds to false, break.
        require(
            balances[msg.sender] >= _value
            && _value > 0
        );
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success) {
        require(
            allowed[_from][msg.sender] >= _value
            && balances[_from] >= _value
            && _value > 0
        );
        balances[_from] -= _value;
        balances[_to] += _value;
        allowed[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    function approve(address _spender, uint256 _value) external returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) external view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}
