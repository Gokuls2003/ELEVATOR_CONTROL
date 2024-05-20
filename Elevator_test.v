module Elevator_test;

// Inputs
reg clk;
reg reset;
reg [5:0] floor_request;

// Outputs
wire [5:0] current_floor;

// Instantiate the Elevator_Control module
Elevator_Control uut (
    .clk(clk),
    .reset(reset),
    .floor_request(floor_request),
    .current_floor(current_floor)
);

initial begin
    // Initialize Inputs
    clk = 0;
    reset = 1;
    floor_request = 6'd0;

    // Wait for global reset
    #100;
    reset = 0;

    // Test moving to 20th floor
    floor_request = 6'd20;
    #10;
    $display("Current Floor: %d", current_floor);

    // Add further tests as needed
end

always #5 clk = ~clk; // Clock generator

endmodule
