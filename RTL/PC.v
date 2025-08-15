//https://github.com/hilay020905/RV32IV

module PC (
    input clk_i,
    input start_i,
    input hazard_i,
    input [31:0] pc_i
    output reg [31:0] pc_o
);

reg flag, flag_next;

//implementation
always@(*)begin
    if(pc_i == 32'd248)
        flag_next = 1;
    else flag_next = flag;
end

always@(posedge clk_i or negedge start_i) begin
    if(~start_i) begin
        pc_o <= 32'b0;
        flag <= 0;
    end
    else begin
        flag <= flag_next;
        if(start_i & (!hazardpc_i))
            pc_o <= (flag)? 32'd248 : pc_i ;
        else
            pc_o <= pc_o;
    end
end

endmodule