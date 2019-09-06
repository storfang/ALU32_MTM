module mtm_Alu_core(

  input wire clk,
  input wire rst_n,
  input wire [31:0] A,
  input wire [31:0] B,
  input wire [7:0] CTL_in,

  output reg [31:0] C,
  output reg [7:0] CTL_out
);

wire [2:0] OP;

assign OP = CTL_in[6:4];
assign CRC = CTL_in[3:0];


localparam RECEIVE = 2'b00,
           SEND = 2'b01,
           LOAD_DATA = 2'b10;

localparam AND = 3'b000,
           OR = 3'b001,
           ADD = 3'b100,
           SUB = 3'b101;

reg        Carry,
           Overflow,
           Zero,
           Negative;

reg [31:0] C_nxt;
reg [7:0] CTL_out_nxt;

always @(posedge clk)
 begin
  if (!rst_n)
    begin
      CTL_out <= 8'b11111111;
      C <= 32'b0;
    end
  else
    begin
      CTL_out <= CTL_out_nxt;
      C <= C_nxt;
    end
end


always @*
      begin
        if( CTL_in == 8'b10100101 || CTL_in == 8'b11001001 || CTL_in == 8'b10010011)
          begin
          $display("error data");
            CTL_out_nxt = CTL_in;
          end
        else if (CTL_in != 8'b11111111)
          begin
          $display("send %b", OP);
            case(OP)
              AND: C_nxt = A & B;
              OR: C_nxt = A | B;
              ADD:
                begin
                  C_nxt = A + B;
                  Carry = ((C_nxt < A) || (C_nxt < B));
  								Overflow = (!(A[31]^B[31]) && (A[31]^C_nxt[31]));
                end
              SUB:
                begin
									C_nxt = A - B;
									Carry = (A < C_nxt);
					        Overflow = (!(A[31]^C_nxt[31]) && (B[31]^C_nxt[31]));
								end
            endcase
            Zero = (C_nxt == 0);
						Negative = C_nxt[31];
            CTL_out_nxt = {1'b0,Carry,Overflow,Zero,Negative,makeCRC({C_nxt,1'b0,Carry,Overflow,Zero,Negative},4'b0000)};
          end
        else
          begin
            Carry = 0;
            Overflow = 0;
            Zero = 0;
            Negative = 0;
            CTL_out_nxt = 8'b11111111;
          end
      end

  // polynomial: x^3 + x^1 + 1
    // data width: 36
    // convention: the first serial bit is D[35]
function [2:0] makeCRC;

    input [35:0] Data;
    input [2:0] crc;
    reg [35:0] d;
    reg [2:0] c;
    reg [2:0] newcrc;
    begin
      d = Data;
      c = crc;

      newcrc[0] = d[35] ^ d[32] ^ d[31] ^ d[30] ^ d[28] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[18] ^ d[17] ^ d[16] ^ d[14] ^ d[11] ^ d[10] ^ d[9] ^ d[7] ^ d[4] ^ d[3] ^ d[2] ^ d[0] ^ c[2];
      newcrc[1] = d[35] ^ d[33] ^ d[30] ^ d[29] ^ d[28] ^ d[26] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[16] ^ d[15] ^ d[14] ^ d[12] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[2] ^ d[1] ^ d[0] ^ c[0] ^ c[2];
      newcrc[2] = d[34] ^ d[31] ^ d[30] ^ d[29] ^ d[27] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[17] ^ d[16] ^ d[15] ^ d[13] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[3] ^ d[2] ^ d[1] ^ c[1];
      makeCRC = newcrc;
    end
endfunction

endmodule
