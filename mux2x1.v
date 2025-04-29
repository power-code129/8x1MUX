module mux2x1 (
    input wire a, b,  // Inputs for the 2x1 MUX
    input wire sel,   // Select line
    output wire y     // Output
);
    assign y = (sel) ? b : a;  // MUX logic
endmodule
