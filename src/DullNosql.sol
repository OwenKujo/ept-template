// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IDullNosql} from "./interfaces/IDullNosql.sol";
import {OrderPreservedMapping} from "./OrderPreservedMapping.sol";

contract DullNosql is IDullNosql {
    using OrderPreservedMapping for OrderPreservedMapping.Map;

    struct Collection {
        OrderPreservedMapping.Map[] documents;
    }

    // We can just use mapping(string => IterabledMapping.Map[]) too
    mapping(string => Collection) private collections;

    // if index is 0 it mean create new document, if not it will add/update value for that key
    function addDocument(
        string memory collectionName,
        uint index,
        string memory key,
        uint value
    ) external returns (uint documentIndex) {
        // TODO: add logic here
    }

    function getDocumentValue(
        string memory collectionName,
        uint index,
        string memory key
    ) external view returns (uint value) {
        // TODO: add logic here
    }

    function getDocumentValues(
        string memory collectionName,
        string memory key
    ) external view returns (uint[] memory) {
        // TODO: add logic here
    }

    function updateDocumentValues(
        string memory collectionName,
        string memory key,
        uint value
    ) external returns (bool updated) {
        // TODO: add logic here
    }

    function deleteDocumentKeys(
        string memory collectionName,
        string memory key
    ) external returns (bool deleted) {
        // TODO: add logic here
    }
}
