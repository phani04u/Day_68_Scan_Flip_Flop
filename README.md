# Day 68: Scan Flip-Flop Using Verilog HDL

## Introduction

A Scan Flip-Flop is a modified D Flip-Flop used in digital integrated circuits for testing internal logic. It contains an additional Scan Input (SI) and Scan Enable (SE) control signal.

The Scan Enable signal selects between the normal data input (D) and Scan Input (SI).

When SE is LOW, the flip-flop captures normal data D at the rising edge of the clock. When SE is HIGH, it captures scan input SI at the rising edge of the clock.

In this project, a Scan Flip-Flop is designed using Verilog HDL and simulated using Xilinx Vivado.

---

## Design

Implemented a Scan D Flip-Flop using Verilog HDL with normal data input, scan input, and scan enable control.

## Testbench

Created a Verilog testbench to verify Normal Mode and Scan Mode operations using different input combinations.

## Waveform

The simulation waveform shows the output response for both Normal Mode and Scan Mode.

- SE = 0: Q captures D.
- SE = 1: Q captures SI.

## Schematic

Generated the RTL schematic in Xilinx Vivado to understand the internal structure and input selection of the Scan Flip-Flop.

---

## Working Principle

| Scan Enable (SE) | Selected Input | Operation |
|---|---|---|
| 0 | D | Normal Mode |
| 1 | SI | Scan Mode |

The Scan Enable signal controls the selection between normal data and scan data.

---

## Uses of Scan Flip-Flop

- Used in Design for Testability (DFT).
- Helps test internal registers in digital circuits.
- Supports shifting test data into and out of a chip.
- Helps identify manufacturing defects.
- Improves the testability of complex digital circuits.

## Applications

### 1. VLSI Testing
Used to test internal logic and registers in integrated circuits.

### 2. Microprocessors
Helps test internal registers and logic blocks in processors.

### 3. System-on-Chip (SoC)
Used for testing different internal blocks of complex integrated circuits.

### 4. Digital Integrated Circuits
Helps improve testability and identify manufacturing faults.

### 5. Embedded Controllers
Used during development and manufacturing testing of digital controllers.

---

## Power Analysis and On-Chip Power Summary

Performed power analysis of the implemented Scan Flip-Flop design using Xilinx Vivado.

The power report provides estimated on-chip power consumption, including Dynamic Power and Device Static Power.

### Power Summary

| Parameter | Value |
|---|---:|
| Total On-Chip Power | 0.448 W |
| Dynamic Power | 0.361 W |
| Device Static Power | 0.086 W |
| Junction Temperature | 27.0 °C |
| Thermal Margin | 73.0 °C |
| Effective θJA | 4.6 °C/W |
| Confidence Level | Low |

### Dynamic Power Breakdown

| Component | Power | Percentage |
|---|---:|---:|
| Signals | 0.014 W | 4% |
| Logic | 0.007 W | 2% |
| I/O | 0.341 W | 94% |

### Power Analysis Observation

The power report shows an estimated total on-chip power consumption of 0.448 W. Dynamic power contributes approximately 81%, while device static power contributes approximately 19%.

I/O power accounts for the largest share of dynamic power in this report.

The confidence level is Low, so the reported power values should be treated as estimates based on the available constraints and switching activity.

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Learning Outcome

Learned the working principle of a Scan Flip-Flop and understood the difference between Normal Mode and Scan Mode. Explored the importance of Scan Enable and Scan Input in Design for Testability (DFT). Also learned how to generate a power report and analyze dynamic and static power consumption using Xilinx Vivado.

## Project Status

Completed – Day 68 of 100 Days of RTL Design Challenge.
