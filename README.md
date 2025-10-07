# 4-bit-pipelined-ALU-using-Verilog-HDL

A **4-bit pipelined Arithmetic Logic Unit (ALU)** implemented in Verilog. This project demonstrates the design, simulation, and verification of a pipelined ALU capable of performing multiple arithmetic and logic operations on 4-bit inputs with pipelining to increase throughput.

---

## 1. Problem Statement

Design and implement a **4-bit ALU with pipelining** that can perform multiple arithmetic and logic operations such as addition, subtraction, AND, OR, XOR, greater than or less than and equality check. The ALU should be **pipelined** to improve throughput, meaning it can accept new inputs every clock cycle while previous computations are still being processed.

---

## 2. Objectives

- Design a **4-bit ALU** capable of performing 8 operations selected by a 3-bit `ALU_SEL`.  
- Implement **pipelining** to increase throughput and demonstrate pipeline latency.  
- Simulate and verify the ALU using a **testbench**.  
- Understand **pipeline behavior and timing delays** in sequential circuits.  
- Provide a **synthesizable Verilog design** suitable for FPGA or ASIC implementation.  

---

## 3. Methodology

1. **Requirement Analysis:** Determine operations (ADD, SUB, AND, OR, XOR, XNOR, NAND, NOR) and inputs/outputs.  
2. **Design:**  
   - Use **Verilog HDL** to implement the ALU.  
   - Introduce **pipeline registers** between stages to store intermediate results.  
3. **Simulation:**  
   - Write a **testbench** to provide different inputs and ALU_SEL values.  
   - Observe **pipeline latency** in `ALU_OUT` and `carry_out`.  
4. **Verification:**  
   - Check results against expected outputs for all operations.  
   - Verify pipeline behaviour (output corresponds to previous inputs).  
---

## 4. Block Diagram

<img width="1377" height="420" alt="4_bit_pipelined_ALU_BLOCK" src="https://github.com/user-attachments/assets/1fef3856-83d0-4d83-9914-b1fcce69a3eb" />


**Explanation:**  
- Inputs `A`, `B`, and `ALU_SEL` enter the ALU.  
- Operations are performed according to `ALU_SEL`.  
- Pipeline registers store intermediate values to allow **new inputs every clock cycle**.  
- Output appears after a delay equal to the number of pipeline stages.

---

## 5. Results

Simulation results demonstrate **correct functionality** and **pipeline behavior**:

<img width="1292" height="696" alt="4_bit_pipelined_ALU" src="https://github.com/user-attachments/assets/394ef831-9398-4a6a-a9f1-165f2549651e" />

**Waveforms:** 
<img width="1867" height="796" alt="4_bit_pipelined_ALU_waveforms" src="https://github.com/user-attachments/assets/3e3d1b27-5619-4974-9739-b63bc51a8d26" />


- **Observation:** The output corresponds to **previous inputs** due to pipeline latency.  
- All ALU operations are verified to produce correct results.

---

## 6. Future Scope

- Extend ALU to **8-bit or 16-bit operations**.  
- Implement **more complex operations** like shift, rotate, or multiplication.  
- Optimize pipeline for **higher frequency** or lower latency.  
- Synthesize the ALU on **FPGA** to test hardware performance.  
- Explore **dynamic pipeline depth adjustment** for variable operation delays.

---

## 7. Conclusions

- Successfully designed a **4-bit pipelined ALU** in Verilog.  
- Demonstrated correct **arithmetic and logic operations** with pipeline delay.  
- Verified that **pipelining improves throughput**, allowing new inputs every clock cycle.  
- This project helps understand **pipeline latency, timing behaviour, and sequential circuit design**.  

---




