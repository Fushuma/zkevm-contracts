// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.19;

interface IPolygonRollupBase {
    function initialize(
        address _admin,
        address sequencer,
        uint32 networkID,
        address gasTokenAddress,
        string memory sequencerURL,
        string memory _networkName
    ) external;

    function onVerifyBatches(
        uint64 lastVerifiedBatch,
        bytes32 newStateRoot,
        address aggregator
    ) external;
}
