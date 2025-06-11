## 💊 Medication Reminder System (VHDL)

This project implements a **Medication Reminder System** using **VHDL**, designed for FPGA deployment on the **Intel DE10-Lite board**. The system provides visual/audible alerts to remind users to take medications at preset times.

## 🛠️ Tools & Technologies

- **VHDL** – Hardware Description Language for digital logic design
- **ModelSim** – Simulation and verification of VHDL modules
- **Intel Quartus Prime** – FPGA synthesis and programming
- **DE10-Lite FPGA Board** – Hardware implementation and testing

## 🔧 Key Features

- **Clock-based scheduling system** to issue medication alerts at defined time intervals
- **Visual (LED) and/or Audio (Buzzer)** notification system
- Modular VHDL design:  
  - Timer/Clock Module  
  - Alert Control Unit  
  - Output Interface Logic  
- Verified via **testbenches** in ModelSim
- Integrated LCD/7-segment display to show time/alerts
- Successfully synthesized and deployed on **DE10-Lite FPGA**

## 📁 Project Structure
├── src/ # VHDL source files
├── sim/ # Testbenches and simulation files
└── README.md

## 🧪 Simulation & Testing

- Simulation performed using **ModelSim**, validating timing and alert logic.
- Waveform analysis ensured correct sequence of events and output signal behavior.

## 🔌 Hardware Deployment

- Synthesized using **Quartus Prime Lite**
- Programmed on **DE10-Lite FPGA** via USB-Blaster
- LEDs and/or buzzer connected to GPIO pins for real-time alerts

