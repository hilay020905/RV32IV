# RISC-V Vector Extension (RVV) Project

## 📌 Overview
This project implements the **RISC-V Vector Extension (RVV)** architecture in **Verilog/SystemVerilog**, enabling hardware-level support for vector operations compliant with the RISC-V specification (RVV 1.0).  
It is designed for **simulation** and **FPGA prototyping**, with a focus on performance, scalability, and verification.

---

## 🚀 Features
- **ISA Support**
  - RV32V / RV64V configurable
  - Supports key RVV instructions: arithmetic, load/store, mask operations, reductions, permutations
  - Vector register file (`v0`–`v31`) with configurable `VLEN`
- **Pipeline Integration**
  - Vector functional units for integer and floating-point ops
  - Coexists with scalar RV32IMZicsr core
  - Integrated hazard detection & forwarding for vector ops
- **Memory Interface**
  - Aligned & unaligned vector loads/stores
  - Support for unit-stride, strided, and indexed access patterns
- **Parameterization**
  - Configurable `VLEN`, `SLEN`, and number of lanes
  - Optional support for vector floating-point (RVV+F/D)
- **Verification**
  - Compliance tests against RISC-V ISA tests
  - Random instruction testing with [riscv-dv](https://github.com/google/riscv-dv)

---

## 📂 Repository Structure

---

## 🛠️ Getting Started

### Prerequisites
- **Verilator** / **ModelSim** / **VCS** for simulation
- **Python 3.8+** for test automation scripts
- **RISC-V GNU Toolchain** with RVV support  
  ```bash
  git clone https://github.com/riscv-collab/riscv-gnu-toolchain
  cd riscv-gnu-toolchain
  ./configure --prefix=/opt/riscv --with-arch=rv64gcv --with-abi=lp64d
  make
