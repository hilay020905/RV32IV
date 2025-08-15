//https://github.com/hilay020905/RV32IV

module MUX_Control (
    input Hazard_i,
    input ALUSrc_i, 
    input RegWrite_i, 
    input MemToReg_i, 
    input MemRead_i, 
    input MemWrite_i,
    input [1:0] ALUOp_i,
    input [4:0] RegDst_i,
    output reg ALUSrc_o, 
    output reg RegWrite_o, 
    output reg MemToReg_o, 
    output reg MemRead_o,
    output reg MemWrite_o,
    output reg [1:0] ALUOp_i,
    output reg [4:0] RegDst_i,
);

//implementation
always@(*)begin
    case(Hazard_i)
    1'b1 : begin
    RegDst_o <= 4'b0000;  
    ALUOp_o <= 2'b00;
    ALUSrc_o <= 1'b0; 
    RegWrite_o <= 1'b0;
    MemToReg_o <= 1'b0;
    MemRead_o <= 1'b0;
    MemWrite_o <= 1'b0;
    end

    1'b0 : begin
    RegDst_o <= RegDst_i;  
    ALUOp_o <= ALUOp_i;
    ALUSrc_o <= ALUSrc_i; 
    RegWrite_o <= RegWrite_i;
    MemToReg_o <= MemToReg_i;
    MemRead_o <= MemRead_i;
    MemWrite_o <= MemWrite_i;
    end

    default : begin
    RegDst_o <= RegDst_i;  
    ALUOp_o <= ALUOp_i;
    ALUSrc_o <= ALUSrc_i; 
    RegWrite_o <= RegWrite_i;
    MemToReg_o <= MemToReg_i;
    MemRead_o <= MemRead_i;
    MemWrite_o <= MemWrite_i;
    end

    endcase
end
endmodule