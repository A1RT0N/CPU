# CPU Design in Quartus

This repository contains the design and simulation files for a CPU developed in Quartus made by students of the University of São Paulo.

- [Components](#components)
  - [Control Unit (UC)](#control-unit-uc)
  - [Arithmetic Logic Unit (ALU)](#arithmetic-logic-unit-alu)
  - [Counter Circuit](#counter-circuit)
  - [CPU Circuit Overview](#cpu-circuit-overview)
  - [Registers](#registers)
- [Simulations](#simulations)
  - [ROM Simulation](#rom-simulation)
  - [Control Unit Simulation](#control-unit-simulation)
  - [Counter Circuit Simulation](#counter-circuit-simulation)
  - [CPU Simulation](#cpu-simulation)
  - [Registers Simulation](#registers-simulation)

---

## Components

### Control Unit (UC)

![Control Unit](img/UC_circ.png)

**The Control Unit (UC)** orchestrates the operations of the processor. It decodes instructions from memory and coordinates the CPU's response.

### Arithmetic Logic Unit (ALU)

![Arithmetic Logic Unit](img/ULA.jpg)

**The Arithmetic Logic Unit (ALU)**, also referred to as the ULA, is responsible for performing all arithmetic and logical operations, such as addition, subtraction, and bitwise operations.

### Counter Circuit

![Counter Circuit](img/contador_circ.png)

**The Counter Circuit** is integral to managing instruction sequencing and memory addressing, with capabilities to increment and decrement values as required.

### CPU Circuit Overview

![CPU Circuit](img/cpu_circ.png)

**The CPU Circuit Overview** illustrates the comprehensive architecture, showcasing how the ALU, Control Unit, and Registers interact with each other and with memory and I/O systems.

### Registers

![Registers](img/registrador_circ.png)

**Registers** provide rapid access to data and instructions necessary for immediate processing, playing a pivotal role in the CPU's operation.

---

## Simulations

### ROM Simulation

![ROM Simulation](img/simu_ROM.png)

**The ROM Simulation** demonstrates the operation of the Read-Only Memory or related memory components, crucial for storing the CPU's firmware and instruction sets.

### Control Unit Simulation

![Control Unit Simulation](img/simu_UC.png)

**The Control Unit Simulation** verifies the UC's functionality in interpreting and dispatching CPU instructions correctly.

### Counter Circuit Simulation

![Counter Circuit Simulation](img/simu_cont.png)

**The Counter Circuit Simulation** ensures accurate tracking of program execution and memory addressing, testing both increment and decrement operations.

### CPU Simulation

![CPU Simulation](img/simu_cpu.png)

**The Full CPU Simulation** validates the cohesive performance of all CPU components, confirming their ability to work in unison.

### Registers Simulation

![Registers Simulation](img/simu_regi.png)

**The Registers Simulation** focuses on the capacity of the registers to hold and quickly supply critical operational data and instructions.

---


