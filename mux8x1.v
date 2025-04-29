module mux8x1 (
    input wire [7:0] data,  // 8 data inputs
    input wire [2:0] sel,   // 3-bit select input
    output wire y           // Output
);

    wire y1, y2;  // Outputs from the two 4x1 MUXes

    // First 4x1 MUX for the lower 4 inputs (data[3:0])
    mux4x1 mux1 (
        .data(data[3:0]),
        .sel(sel[1:0]),
        .y(y1)
    );

    // Second 4x1 MUX for the higher 4 inputs (data[7:4])
    mux4x1 mux2 (
        .data(data[7:4]),
        .sel(sel[1:0]),
        .y(y2)
    );

    // 2x1 MUX to select between the outputs of the two 4x1 MUXes
    assign y = (sel[2] == 1'b0) ? y1 : y2;

endmodule
