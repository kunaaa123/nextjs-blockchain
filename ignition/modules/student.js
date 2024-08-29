const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const StudensModule = buildModule("StudensModule", (m) => {
  const student = m.contract("Students");

  return { student };
});

module.exports = StudensModule;
