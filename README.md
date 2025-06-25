# 🎲 Digital Dice Roller using Verilog

A simple and effective Verilog project that simulates a 6-sided digital dice. Built using modular design principles, this project is perfect for beginners exploring digital design and simulation using Verilog. The dice output updates with each simulated "roll" and loops through values from 1 to 6.

---

## ✅ Features

- 🔁 **Digital Dice Simulation**: Cycles through numbers 1 to 6 on each roll
- 🧠 **Modular Verilog Design**: Clean separation into clock divider, dice logic, and top module
- ⏱️ **Clock Divider**: Slows system clock for visible output
- 🧪 **Testbench Provided**: Easy to simulate using Icarus Verilog
- 📈 **Waveform Debugging**: Compatible with GTKWave for waveform viewing
- 🌐 **Online Compatibility**: Works on EDAPlayground (no installation needed)

---

## 🧰 Applications

- 🎲 Game development (random dice simulation)
- 🧪 Teaching tool for Verilog basics
- 🔧 Learning FSMs and counters in digital design
- 📊 Timing control and waveform analysis practice
- 🧠 Foundation for larger FPGA-based games or educational kits

---

## 🖥️ Files Included

- `clock_divider.v` – Slows down the main clock signal
- `dice_logic.v` – Controls the dice increment and looping
- `dice_top.v` – Top module to connect all submodules
- `testbench.v` – Simulates clock, reset, and roll_button signals
- `README.md` – Project documentation

---

## 📦 How to Install and Run Locally

### 🔧 Prerequisites

- [Icarus Verilog](http://iverilog.icarus.com/)
- [GTKWave](http://gtkwave.sourceforge.net/)
- Terminal / command prompt
- VS Code (optional, for editing)

### 🛠️ Steps to Run

1. **Clone or Download** this repository
   ```bash
   git clone https://github.com/yourusername/verilog-dice-roller.git
   cd verilog-dice-roller
   ```
2. Compile the Verilog Files:
   ```bash
   iverilog -o dice_sim design.v testbench.v
   ```
3. Run the simulation:
   ```bash
   vvp dice_sim
   ```
4.View the wavefom in GTKWave:
  ```bash
  gtkwave dice_waveform.vcd
  ```
