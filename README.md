# Final System Description

## System Overview

This system contains 10 blocks:

### Clock Domain 1 (REF\_CLK)

* RegFile
* ALU
* Clock Gating
* SYS\_CTRL

### Clock Domain 2 (UART\_CLK)

* UART\_TX
* UART\_RX
* PULSE\_GEN
* Clock Dividers

### Data Synchronizers

* RST Synchronizer
* Data Synchronizer
* ASYNC FIFO

---

## Clock Domain 1

### 1) RegFile

#### Block Interface and Signal Description

| Port          | Direction | Width                           | Description             | Connected to   |
| ------------- | --------- | ------------------------------- | ----------------------- | -------------- |
| CLK           | IN        | 1                               | Clock Signal (REF\_CLK) | TOP Input Port |
| RST           | IN        | 1                               | Active Low Reset        | RST\_SYNC      |
| Address       | IN        | Parameterized (default: 4 bits) | Address bus             | SYS\_CTRL      |
| WrEn          | IN        | 1                               | Write Enable            | SYS\_CTRL      |
| RdEn          | IN        | 1                               | Read Enable             | SYS\_CTRL      |
| WrData        | IN        | Parameterized (default: 8 bits) | Write Data Bus          | SYS\_CTRL      |
| RdData        | OUT       | Parameterized (default: 8 bits) | Read Data Bus           | SYS\_CTRL      |
| RdData\_Valid | OUT       | 1                               | Read Data Valid         | SYS\_CTRL      |
| REG0          | OUT       | Parameterized (default: 8 bits) | Register at Address 0x0 | ALU            |
| REG1          | OUT       | Parameterized (default: 8 bits) | Register at Address 0x1 | ALU            |
| REG2          | OUT       | Parameterized (default: 8 bits) | Register at Address 0x2 | UART           |
| REG3          | OUT       | Parameterized (default: 8 bits) | Register at Address 0x3 | Clock Divider  |

#### Reserved Registers Description

* **REG0 (Address: 0x0)** — ALU Operand A
* **REG1 (Address: 0x1)** — ALU Operand B
* **REG2 (Address: 0x2)**

  * REG2\[0]: Parity Enable (Default = 1)
  * REG2\[1]: Parity Type (Default = 0)
  * REG2\[7:2]: Prescale (Default = 32)
* **REG3 (Address: 0x3)** — Division Ratio (Default = 32)

---

### 2) ALU

#### Signal Description

| Port       | Direction | Width                           | Description      | Connected to |
| ---------- | --------- | ------------------------------- | ---------------- | ------------ |
| CLK        | IN        | 1                               | Clock Signal     | CLK\_GATE    |
| RST        | IN        | 1                               | Active Low Reset | RST\_SYNC    |
| A          | IN        | Parameterized (default: 8 bits) | Operand A        | RegFile REG0 |
| B          | IN        | Parameterized (default: 8 bits) | Operand B        | RegFile REG1 |
| ALU\_FUN   | IN        | Parameterized (default: 4 bits) | ALU Function     | SYS\_CTRL    |
| Enable     | IN        | 1                               | ALU Enable       | SYS\_CTRL    |
| ALU\_OUT   | OUT       | Parameterized (default: 8 bits) | ALU Result       | SYS\_CTRL    |
| OUT\_VALID | OUT       | 1                               | Result Valid     | SYS\_CTRL    |

---

### 3) Clock Gating

| Port       | Direction | Width | Description             | Connected to   |
| ---------- | --------- | ----- | ----------------------- | -------------- |
| CLK        | IN        | 1     | Clock Signal (REF\_CLK) | TOP Input Port |
| CLK\_EN    | IN        | 1     | Clock Enable            | SYS\_CTRL      |
| GATED\_CLK | OUT       | 1     | Gated Clock Signal      | ALU            |

---

### 4) SYS\_CTRL

| Port          | Direction | Width | Description             | Connected to   |
| ------------- | --------- | ----- | ----------------------- | -------------- |
| CLK           | IN        | 1     | Clock Signal (REF\_CLK) | TOP Input Port |
| RST           | IN        | 1     | Active Low Reset        | RST\_SYNC      |
| ALU\_OUT      | IN        | 16    | ALU Result              | ALU            |
| OUT\_Valid    | IN        | 1     | ALU Result Valid        | ALU            |
| ALU\_FUN      | OUT       | 4     | ALU Function            | ALU            |
| EN            | OUT       | 1     | ALU Enable              | ALU            |
| CLK\_EN       | OUT       | 1     | Clock Gate Enable       | CLK\_GATE      |
| Address       | OUT       | 4     | Address Bus             | RegFile        |
| WrEn          | OUT       | 1     | Write Enable            | RegFile        |
| RdEn          | OUT       | 1     | Read Enable             | RegFile        |
| WrData        | OUT       | 8     | Write Data              | RegFile        |
| RdData        | IN        | 8     | Read Data               | RegFile        |
| RdData\_Valid | IN        | 1     | Read Data Valid         | RegFile        |
| RX\_P\_DATA   | IN        | 8     | UART\_RX Data           | UART\_RX       |
| RX\_D\_VLD    | IN        | 1     | RX Data Valid           | UART\_RX       |
| TX\_P\_DATA   | OUT       | 8     | UART\_TX Data           | UART\_TX       |
| TX\_D\_VLD    | OUT       | 1     | TX Data Valid           | UART\_TX       |
| clk\_div\_en  | OUT       | 1     | Clock Divider Enable    | Clock Divider  |

---

### 5) UART\_TX

| Port        | Direction | Width                           | Description      | Connected to    |
| ----------- | --------- | ------------------------------- | ---------------- | --------------- |
| CLK         | IN        | 1                               | Clock Signal     | Clock Divider   |
| RST         | IN        | 1                               | Active Low Reset | RST\_SYNC\_2    |
| PAR\_EN     | IN        | 1                               | Parity Enable    | RegFile         |
| PAR\_TYP    | IN        | 1                               | Parity Type      | RegFile         |
| P\_DATA     | IN        | Parameterized (default: 8 bits) | Parallel IN Data | ASYNC\_FIFO     |
| DATA\_VALID | IN        | 1                               | Data Valid       | ASYNC\_FIFO     |
| S\_DATA     | OUT       | 1                               | Serial Output    | TOP Output Port |
| Busy        | OUT       | 1                               | UART Status      | PULSE\_GEN      |

---

### 6) UART\_RX

| Port      | Direction | Width                           | Description       | Connected to               |
| --------- | --------- | ------------------------------- | ----------------- | -------------------------- |
| CLK       | IN        | 1                               | Clock Signal      | TOP Input Port (UART\_CLK) |
| RST       | IN        | 1                               | Active Low Reset  | RST\_SYNC\_2               |
| Prescale  | IN        | 6                               | Prescale          | RegFile                    |
| PAR\_EN   | IN        | 1                               | Parity Enable     | RegFile                    |
| PAR\_TYP  | IN        | 1                               | Parity Type       | RegFile                    |
| RX\_IN    | IN        | 1                               | Frame Serial Bits | TOP Input Port             |
| P\_DATA   | OUT       | Parameterized (default: 8 bits) | Parallel Data     | DATA\_SYNC                 |
| DATA\_VLD | OUT       | 1                               | Valid Output      | DATA\_SYNC                 |
| PAR\_ERR  | OUT       | 1                               | Parity Error      | TOP Output Port            |
| STP\_ERR  | OUT       | 1                               | Stop Error        | TOP Output Port            |

---

### 7) PULSE\_GEN

| Port       | Direction | Width | Description      | Connected to |
| ---------- | --------- | ----- | ---------------- | ------------ |
| CLK        | IN        | 1     | Clock Signal     | UART\_TX     |
| RST        | IN        | 1     | Active Low Reset | RST\_SYNC\_2 |
| LVL\_SIG   | IN        | 1     | Level Signal     | UART\_TX     |
| PULSE\_SIG | OUT       | 1     | Pulse Output     | ASYNC\_FIFO  |

---

## Synchronizers

### 1) RST\_SYNC

| Port      | Direction | Width | Description        |
| --------- | --------- | ----- | ------------------ |
| RST       | IN        | 1     | Async Reset        |
| CLK       | IN        | 1     | Clock Signal       |
| SYNC\_RST | OUT       | 1     | Synchronized Reset |

### 2) DATA\_SYNC

| Port             | Direction | Width | Description        |
| ---------------- | --------- | ----- | ------------------ |
| unsync\_bus      | IN        | 8     | Unsynchronized Bus |
| bus\_enable      | IN        | 1     | Bus Enable         |
| dest\_clk        | IN        | 1     | Destination Clock  |
| dest\_rst        | IN        | 1     | Destination Reset  |
| sync\_bus        | OUT       | 8     | Synchronized Bus   |
| enable\_pulse\_d | OUT       | 1     | Enable Pulse       |

### 3) ASYNC\_FIFO

| Port     | Direction | Width     | Description  | Connected to              |
| -------- | --------- | --------- | ------------ | ------------------------- |
| W\_CLK   | IN        | 1         | Write Clock  | TOP Input Port (REF\_CLK) |
| W\_RST   | IN        | 1         | Write Reset  | RST\_SYNC\_1              |
| W\_INC   | IN        | 1         | Write Enable | SYS\_CTRL                 |
| WR\_DATA | IN        | Param (8) | Write Data   | SYS\_CTRL                 |
| R\_CLK   | IN        | 1         | Read Clock   | RST\_SYNC\_2              |
| R\_RST   | IN        | 1         | Read Reset   | RST\_SYNC\_2              |
| R\_INC   | IN        | 1         | Read Enable  | PULSE\_GEN                |
| RD\_DATA | OUT       | Param (8) | Read Data    | UART\_TX                  |
| FULL     | OUT       | 1         | FIFO Full    | SYS\_CTRL                 |
| EMPTY    | OUT       | 1         | FIFO Empty   | UART\_TX                  |

---

## System Operation

### Introduction

The system executes commands received from the master via UART\_RX. Results are returned via UART\_TX after processing by internal components like ALU and RegFile.

### Supported Operations

* **ALU Operations:** ADD, SUB, MUL, DIV, AND, OR, NAND, NOR, XOR, XNOR, CMP (A=B), CMP (A>B), SHIFT LEFT, SHIFT RIGHT
* **Register File Operations:** Write, Read

### Supported Commands

1. **Register File Write (3 Frames):**

   * Frame 0: 0xAA
   * Frame 1: Address
   * Frame 2: Data

2. **Register File Read (2 Frames):**

   * Frame 0: 0xBB
   * Frame 1: Address

3. **ALU Operation with Operands (4 Frames):**

   * Frame 0: 0xCC
   * Frame 1: Operand A
   * Frame 2: Operand B
   * Frame 3: ALU Function

4. **ALU Operation without Operands (2 Frames):**

   * Frame 0: 0xDD
   * Frame 1: ALU Function

### Testbench Sequence

1. Initialize configuration (write to RegFile addresses 0x2, 0x3)
2. Send commands (RF and ALU)
3. System receives commands via UART\_RX
4. SYS\_CTRL processes commands
5. ALU/RegFile performs operation
6. SYS\_CTRL returns result via UART\_TX

> **Note:**

* RegFile Normal Access: 0x4 to 0x15
* RegFile Reserved: 0x0 to 0x3
