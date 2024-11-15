# Exp-No: 02 - Seven Segment Display using Verilog HDL and Testbench Verification

**Aim:** <br>
<br>
&emsp;&emsp;To design and simulate a seven-segment display driver using Verilog HDL, and verify its functionality through a testbench in the Vivado 2023.1 environment. The objective is to implement the logic that converts a 4-bit binary input into the corresponding 7-segment display output for the digits 0 to 9.<br>
<br>
**Apparatus Required:** <br>
<br>
&emsp;&emsp;Vivado 2023.1 and Computer system with a suitable operating system.<br>
<br>
**Procedure:** <br>
**Launch Vivado 2023.1:** <br>
<br>
&emsp;&emsp;Open Vivado and create a new project.<br>
<br>
**Design the Verilog Code:** <br>
<br>
&emsp;&emsp;Write the Verilog code for the seven-segment display,defining the logic that maps a 4-bit binary input to the corresponding segments(a to g) of the display.<br>
<br>
**Create the Testbench:** <br>
<br>
&emsp;&emsp;Write a testbench to simulate the seven-seg display behavior.The testbench should apply various 4-bit input values and monitor the corresponding output on the seven-seg display.<br>
<br>
**Add the Verilog Files:** <br>
<br>
&emsp;&emsp;Add both the design module and the testbench in the Vivado project.<br>
<br>
**Run Simulation:** <br>
<br>
&emsp;&emsp;Run the behavioral simulation to verify the output. Ensure the seven-segment display behaves correctly for binary inputs 0000 to 1001 (decimal 0 to 9).<br>
<br>
**Observe the Waveforms:** <br>
<br>
&emsp;&emsp;Analyze the output waveforms in the simulation window, and verify that the correct segments light up for each digit.<br>
<br>
**Save and Document Results:** <br>
<br>
&emsp;&emsp;Capture screenshots of the waveform and save the simulation logs. These will be included in the lab report.<br>
<br>

**Diagram:** <br>
<br>
![368843959-d7ecb419-906e-4e3b-9b82-f86ced4f364a](https://github.com/user-attachments/assets/12cf6418-94c8-4a7a-a850-531d7d189f80)

**Verilog Code for Seven-Segment Display:**

```

module bcd_7_seg(
  output reg [6:0] seg,
  input [3:0] bcd );
  always @(bcd) begin
    case (bcd)
      4'b0000: seg = 7'b0000001;
      4'b0001: seg = 7'b1001111;
      4'b0010: seg = 7'b0010010;
      4'b0011: seg = 7'b0000110;
      4'b0100: seg = 7'b1001100;
      4'b0101: seg = 7'b0100100;
      4'b0110: seg = 7'b0100000;
      4'b0111: seg = 7'b0001111;
      4'b1000: seg = 7'b0000000;
      4'b1001: seg = 7'b0000100;
      default: seg = 7'b1111111;
    endcase
  end
endmodule

```

**Testbench for Seven-Segment Display:**

```

`timescale 1ns/1ns
module bcd_7_segment_tb();
reg [3:0]bcd;
wire [6:0]seg;
bcd_7_seg dut(.bcd(bcd),.seg(seg));
initial begin 
          bcd=4'd0;
        #2;bcd=4'd1;
        #2;bcd=4'd2;
        #2;bcd=4'd3;
        #2;bcd=4'd4;
        #2;bcd=4'd5;
        #2;bcd=4'd6;
        #2;bcd=4'd7;
        #2;bcd=4'd8;
        #2;bcd=4'd9;
        #2;bcd=4'd10;
        #2;
        $finish;
    end
endmodule

```
**Sample Output:**
```

Time=0 | bcd=0000 | seg=0000001
Time=2000 | bcd=0001 | seg=1001111
Time=4000 | bcd=0010 | seg=0010010
Time=6000 | bcd=0011 | seg=0000110
Time=8000 | bcd=0100 | seg=1001100
Time=10000 | bcd=0101 | seg=0100100
Time=12000 | bcd=0110 | seg=0100000
Time=14000 | bcd=0111 | seg=0001111
Time=16000 | bcd=1000 | seg=0000000
Time=18000 | bcd=1001 | seg=0000100

```
**Output Waveform:** <br>
<br>
![Screenshot 2024-11-15 111851](https://github.com/user-attachments/assets/f6aa0a42-a256-44f4-adc8-6d39b7c58897)

<br>

**Conclusion:** <br>
<br>
&emsp;&emsp;In this experiment, a seven-segment display driver was successfully designed and simulated using Verilog HDL. The simulation results confirmed that the display correctly represented the digits 0 to 9 based on the 4-bit binary input. The testbench effectively verified the functionality of the seven-segment display by applying various input combinations and observing the corresponding segment outputs. This experiment highlights how Verilog HDL can be used to control hardware components like a seven-segment display in digital systems.
