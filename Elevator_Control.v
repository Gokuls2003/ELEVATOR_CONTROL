module Elevator_Control(
    input wire clk,
    input wire reset,
    input wire [5:0] floor_request, // Change to 6-bit input for 40 floors
    output reg [5:0] current_floor // Change to 6-bit output for 40 floors
);

// Add logic for elevator control
always @(posedge clk or posedge reset) begin
    if (reset) begin
        current_floor <= 6'd0; // Initialize to ground floor
    end else begin
        if (floor_request == 6'd20) begin
            current_floor <= 6'd20; // Stop at 20th floor
        end else begin
            // Logic to move the elevator to the requested floor
            current_floor <= floor_request;
        end
    end
end

endmodule
