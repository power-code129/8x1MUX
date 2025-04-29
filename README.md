# 8x1MUX
## AIM: 
To design and implement an 8x1 Multiplexer using 4x1 and 2x1 Multiplexers in Verilog HDL, and to verify its functionality through simulation. 
## APPARATUS REQUIRED: 
1. Microsoft Visual Studio Code 
2. Icarus Verilog 
3. Gtkwave (simulation) 
4. PC 
## THEORY: 
A Multiplexer (MUX) is a combinational logic device that selects binary information from one of many input lines and directs it to a single output line. The selection of the input line is controlled by select lines. An 8x1 MUX has 8 input lines, 3 select lines, and 1 output. The 3 select lines can represent eight different combinations, allowing one of the 8 inputs to be passed to the output. To implement an 8x1 multiplexer using smaller multiplexers: 
    1. Two 4x1 MUXes are used to handle the 8 input lines (I0 to I7). 
    2. One 2x1 MUX is used to select between the outputs of the two 4x1 MUXes. 
    3. The select lines S2, S1, and S0 control the operation: S2 is connected to the select line of the 2x1 MUX, while S1 and S0 are used for the 4x1 MUXes. 
This hierarchical design not only simplifies the implementation but also enhances modularity and reuse of smaller modules, which is a good design practice in digital systems and VLSI design.
