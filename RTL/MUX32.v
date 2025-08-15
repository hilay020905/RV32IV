//https://github.com/hilay020905/RV32IV

module MUX32(
    input [31:0] data1_i,
    input [31:0] data2_i,
    input select_i,
    output [31:0] data_o
);

//implementation
assign data_o = (select_i)? data2_i : data1_i ;

endmodule