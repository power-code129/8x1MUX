module tb_mux8x1;

    reg [7:0] data;   // 8 data inputs
    reg [2:0] sel;    // 3-bit select input
    wire y;           // Output

    // Instantiate the 8x1 MUX
    mux8x1 uut (
        .data(data),
        .sel(sel),
        .y(y)
    );

    // Stimulus
    initial begin
        // Create waveform dump
        $dumpfile("dump.vcd");         // VCD output file
        $dumpvars(0, tb_mux8x1);       // Dump all signals in this module

        // Display the values of data, sel, and y
        $monitor("time = %0t, data = %b, sel = %b, y = %b", $time, data, sel, y);

        // Example pattern
        data = 8'b01010101;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $finish;
    end

endmodule
