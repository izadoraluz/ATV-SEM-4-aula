// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Declaração do contrato chamado anac
contract Anac {
    // Variável de estado 'idade' com valor inicial de 18 anos
    // Esta variável armazena a idade de uma pessoa 
    uint public idade = 18;

    // Variável que armazena o endereço do dono do contrato
    address public owner;

    // Construtor que define o dono do contrato como o endereço que o implantou
    constructor() {
        owner = msg.sender;
    }

    // Função para definir a idade 
    // Somente o dono do contrato pode alterar a idade 
    function setIdade(uint _idade) public {
        // Verifica se o chamador da função é o dono do contrato
        require(msg.sender == owner, "Somente o dono pode alterar a idade");
        idade = _idade;
    }

    // Função para obter a idade atual
    // Qualquer um pode chamar esta função para ver a idade armazenada
    function getIdade() public view returns (uint) {
        return idade;
    }
}
