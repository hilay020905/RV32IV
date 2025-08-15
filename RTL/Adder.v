//https://github.com/hilay020905/RV32IV

module Adder
(
    input  [31:0] data1_in,
    input  [31:0] data2_in;
    output [31:0] data_o;
);

//implementation
assign data_o = data1_in + data2_in ;

endmodule