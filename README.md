# CPU Design in Quartus

This repository contains the design and simulation files for a CPU developed in Quartus made by students of the university of São Paulo. Below is an overview of each component and simulation included.

## Components

### Control Unit (UC)

![Control Unit](img/UC_circ.png)

The Control Unit (UC) is responsible for directing the operation of the processor. It interprets the instructions from memory and initiates the sequence of microoperations needed to execute them.

### Arithmetic Logic Unit (ALU)

![Arithmetic Logic Unit](img/ULA.jpg)

The Arithmetic Logic Unit (ALU), or ULA, performs all arithmetic and logical operations within the CPU. It can perform operations such as addition, subtraction, AND, OR, and NOT operations, which are fundamental for the CPU's functioning.

### Counter Circuit

![Counter Circuit](img/contador_circ.png)

This image shows the counter circuit used in the CPU. Counters are essential for operations such as instruction sequencing, program execution tracking, and memory addressing. They can increment or decrement to keep track of the CPU's state or control the execution flow.

### CPU Circuit Overview

![CPU Circuit](img/cpu_circ.png)

This diagram presents the overall architecture of the CPU. It includes the integration of various components such as the Arithmetic Logic Unit (ALU), Control Unit, Registers, and interfaces with memory and input/output systems. This schematic provides a holistic view of how the different parts of the CPU are interconnected and interact during processing.

### Registers

![Registers](img/registrador_circ.png)

This image shows the circuit design for the registers within the CPU. Registers are critical for quickly accessing data and instructions that are in immediate use. They store information temporarily during execution, such as operands for the ALU, instruction codes, addresses, and the results of operations.

## Simulations

### ROM Simulation

![ROM Simulation](img/simu_ROM.png)

This screenshot presents the simulation results for the Read-Only Memory (ROM) or a similar memory component within the CPU. ROM is often used to store firmware or fixed instruction sets that are crucial in bootstrapping the CPU and controlling fundamental operations.

### Control Unit Simulation

![Control Unit Simulation](img/simu_UC.png)

This image shows the simulation results for the CPU's Control Unit (UC). Such simulations are vital for verifying the correct operation of the Control Unit, ensuring it accurately interprets instructions and appropriately controls the flow of operations within the CPU.

### Counter Circuit Simulation

![Counter Circuit Simulation](img/simu_cont.png)

This screenshot displays the simulation results for the counter circuit within the CPU. These simulations are crucial to ensure that the counter accurately increments or decrements according to the CPU's processing needs, effectively tracking program execution and addressing.

### CPU Simulation

![CPU Simulation](img/simu_cpu.png)

This image presents the complete simulation results for the entire CPU. Such simulations are essential to verify the integrated functioning of all CPU components, ensuring that they work together seamlessly to perform computations, process instructions, and manage data flow within the CPU architecture.

### Registers Simulation

![Registers Simulation](img/simu_regi.png)

This screenshot shows the simulation results for the CPU's registers. Simulating register operations is key to confirming their ability to store and provide rapid access to critical data and instructions during CPU operations.

